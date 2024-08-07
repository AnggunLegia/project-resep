import 'dart:ui';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

Future<ui.Image> loadImage(String asset) async {
  ByteData data = await rootBundle.load(asset);
  ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List());
  ui.FrameInfo fi = await codec.getNextFrame();
  return fi.image;
}

class FlDotCustomPainter extends FlDotPainter {
  final ui.Image image;

  FlDotCustomPainter(this.image);

  @override
  void draw(Canvas canvas, FlSpot spot, Offset offsetInCanvas,
      {double? opacity = 1, Color? color, double? strokeWidth = 0, double? radius = 15}) {
    final paint = Paint()
      ..color = color?.withOpacity(opacity ?? 1) ?? Colors.black;
    final imageSize = Size(image.width.toDouble(), image.height.toDouble());
    final destinationRect = Rect.fromCenter(
        center: offsetInCanvas, width: radius! * 2, height: radius * 2);
    final sourceRect = Rect.fromLTWH(0, 0, imageSize.width, imageSize.height);
    canvas.drawImageRect(image, sourceRect, destinationRect, paint);
  }

  @override
  Size getSize(FlSpot spot) => const Size(40, 40);

  @override
  void drawTouched(Canvas canvas, FlSpot spot, Offset offsetInCanvas,
      {Color? color, double? strokeWidth = 0, double? radius = 40}) {
    draw(canvas, spot, offsetInCanvas,
        opacity: 1, color: color, strokeWidth: strokeWidth, radius: radius);
  }

  @override
  FlDotPainter lerp(FlDotPainter a, FlDotPainter b, double t) {
    return this;
  }

  @override
  Color get mainColor => Colors.transparent;

  @override
  List<Object?> get props => [image];
}

class AppColors {
  static const contentColorCyan = Color.fromARGB(255, 22, 228, 255);
  static const contentColorBlue = Color.fromARGB(255, 255, 255, 255);
  static const mainGridLineColor = Color.fromARGB(255, 159, 207, 246);
}

class Chart03 extends StatefulWidget {
  const Chart03({super.key});

  @override
  State<Chart03> createState() => _Chart03State();
}

class _Chart03State extends State<Chart03> {
  bool showAvg = false;
  late Future<ui.Image> imageFuture;
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    imageFuture = loadImage('assets/images/fishhh.png');
     _controller = VideoPlayerController.asset('assets/images/lautlagi.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.setLooping(true);
        _controller.play();
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Fish Finder",
            style: GoogleFonts.candal(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 15,
                color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        height: 60,
        shadowColor: Colors.black38,
         child: Center(
          child: Text("Confidence: 33%", style: TextStyle(
                      color: Colors.black,),
         ),
         ),
        // Row(
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.only(left: 50),
        //       child: Row(
        //         children: [
        //           Image(
        //             image: AssetImage("assets/images/fishhh1.png"),
        //             width: 35,
        //           ),
        //           const Text(
        //             ":18 M",
        //             style: TextStyle(
        //               color: Colors.black,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.only(left: 100),
        //       child: Row(
        //         children: [
        //           Image(
        //             image: AssetImage("assets/images/seawapes.png"),
        //           ),
        //           const Text(
        //             ":36M",
        //             style: TextStyle(
        //               color: Colors.black,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
      ),
      // backgroundColor: Colors.blue[400],
      body: Container(
       width: 700,
        decoration: BoxDecoration(
          
          // image: DecorationImage(image: AssetImage('assets/images/laut4.gif',), fit: BoxFit.cover)
        ),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
            child: _controller.value.isInitialized
                ? VideoPlayer(_controller)
                : Container(color: Colors.black),
          ),
            // Positioned.fill(
            //   left: 0,
            //   right: 0,
            //   child: Image.asset(
            //     'assets/images/laut1.png',
            //     fit: BoxFit.cover,
            //   ),
            // ),
            AspectRatio(
              aspectRatio: 0.60,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 28,
                  left: 12,
                  top: 20,
                  bottom: 10,
                ),
                child: FutureBuilder<ui.Image>(
                  future: imageFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done &&
                        snapshot.hasData) {
                      return LineChart(
                        showAvg
                            ? avgData(snapshot.data!)
                            : mainData(snapshot.data!),
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),
            ),
            // Menambahkan legenda "Data Terkini" di dalam chart
            Positioned(
              top: 20,
              right: 215,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    
                    child: Column(
                      children: [
                        
                        const Text(
                          "Data Terkini",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Image.asset('assets/images/fishhh1.png', width: 30),
                              const Text(":9 M", style: TextStyle(
                              color: Colors.black
                          ),),
                            ],
                          )
                          ),
                          Container(
                          child: Row(
                            children: [
                              Image.asset('assets/images/seawapes.png', width: 30),
                              const Text(":36 M", style: TextStyle(
                              color: Colors.black
                          ),),
                            ],
                          )
                          ),
                        
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Tombol di dalam Stack
            SizedBox(
              width: 60,
              height: 34,
              // child: TextButton(
              //   onPressed: () {
              //     setState(() {
              //       showAvg = !showAvg;
              //     });
              //   },
              //   child: Text(
              //     'avg',
              //     style: TextStyle(
              //       fontSize: 12,
              //       color: showAvg ? Colors.white.withOpacity(0.5) : Colors.white,
              //     ),
              //   ),
              // ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
        fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black);
    Widget text;
    switch (value.toInt()) {
      case 2:
        text = const Text('1.30m', style: style);
        break;
      case 5:
        text = const Text('1.40m', style: style);
        break;
      case 8:
        text = const Text('1.50m', style: style);
        break;
      case 10:
        text = const Text('1.60m', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
      color: Colors.black
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '36';
        break;
      case 3:
        text = '26';
        break;
      case 5:
        text = '18';
        break;
      case 7:
        text = '9';
        break;
      case 9:
        text = '0';
        break;
      default:
        return Container();
    }

    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Text(text, style: style, textAlign: TextAlign.left),
    );
  }

  LineChartData mainData(ui.Image image) {
    return LineChartData(
      gridData: FlGridData(
        show: false,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: AppColors.mainGridLineColor,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: AppColors.mainGridLineColor,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 30,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: const Border(
          left: BorderSide(width: 2, color: Colors.black),
          bottom: BorderSide(width: 2, color: Colors.black),
        ),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 10,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: false,
          barWidth: 0,
          isStrokeCapRound: false,
          dotData: FlDotData(
            show: true,
            getDotPainter: (spot, percent, barData, index) {
              return FlDotCustomPainter(image);
            },
          ),
          belowBarData: BarAreaData(
            show: false,
          ),
        ),
      ],
    );
  }

  LineChartData avgData(ui.Image image) {
    return LineChartData(
      lineTouchData: const LineTouchData(enabled: false),
      gridData: FlGridData(
        show: false,
        drawHorizontalLine: true,
        verticalInterval: 1,
        horizontalInterval: 1,
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: Color.fromARGB(255, 234, 246, 255),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: Color.fromARGB(255, 229, 243, 255),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: bottomTitleWidgets,
            interval: 1,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
            interval: 1,
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3.44),
            FlSpot(2.6, 3.44),
            FlSpot(4.9, 3.44),
            FlSpot(6.8, 3.44),
            FlSpot(8, 3.44),
            FlSpot(9.5, 3.44),
            FlSpot(11, 3.44),
          ],
          isCurved: false,
          barWidth: 5,
          isStrokeCapRound: false,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
          ),
        ),
      ],
    );
  }
}
