import 'package:flutter/material.dart';
import 'package:pemanasan/fl/chart/chart.dart';
import 'package:pemanasan/fl/fish/ff.dart';

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
        title: Center(child: Text("Fish Finder", style: TextStyle(
          color: Colors.white
        ),)),
        backgroundColor: Colors.blue[700],
      ),body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>chartfl()));
              },
              child: Container(
                margin: EdgeInsets.only(top: 20, left: 30),
                width: 300,
                height: 150,
                child: Center(
                  child: Text("cuaca")),
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>fissh()));
              },
              child: Container(
                margin: EdgeInsets.only(top: 20, left: 30),
                width: 300,
                height: 150,
                child: Center(
                  child: Text("Fish Finder")),
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}