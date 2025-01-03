
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pemanasan/fish_finder/chart/chart.dart';
import 'package:pemanasan/fish_finder/chart/chart2.dart';
import 'package:pemanasan/fish_finder/chart/chart3.dart';
import 'package:pemanasan/fish_finder/chart/chartbaru.dart';
import 'package:pemanasan/fish_finder/chart/main1.dart';
import 'package:pemanasan/fish_finder/fish/ff.dart';


class PageHomeFish extends StatefulWidget {
  const PageHomeFish({super.key});

  @override
  State<PageHomeFish> createState() => _PageHomeFishState();
}

class _PageHomeFishState extends State<PageHomeFish> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "FishGo",
            style:  GoogleFonts.amarante(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 15,
                color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue[700],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (BuildContext context) => chartfl()));
              },
              child: Container(
                margin: EdgeInsets.only(top: 20, left: 5),
                width: 300,
                height: 150,
                child: Center(child: Text("Cuaca")),
                decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (BuildContext context) => FishFinderApp()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 20, left:30),
                    width: 150,
                    height: 100,
                    
                      child: Row(
                        children: [
                          Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only( right: 10, top: 15, left: 10),
                              child: Text("Fish Finder", style:  GoogleFonts.amarante(
                              textStyle: Theme.of(context).textTheme.displayLarge,
                              fontSize: 15,
                              color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 60),
                              width: 45,
                              child: Image.asset("assets/images/ffis.png"),
                            ),
                          ],
                                              ),
                        ],
                      ),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 8, 101, 193)
                        ),
                  ),
                ),

                 Container(
              
            )
            
              ],
            ),
            
           
          ],
        ),
      ),
    );
  }
}
