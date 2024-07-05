import 'package:flutter/material.dart';
import 'package:pemanasan/fish_finder/chart/chart.dart';
import 'package:pemanasan/fish_finder/chart/chart2.dart';
import 'package:pemanasan/fish_finder/chart/chart3.dart';
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
            ),
             GestureDetector(
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>chart02()));
              },
              child: Container(
                margin: EdgeInsets.only(top: 20, left: 30),
                width: 300,
                height: 150,
                child: Center(
                  child: Text("Fish Finder 200")),
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
            ), GestureDetector(
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Chart03()));
              },
              child: Container(
                margin: EdgeInsets.only(top: 20, left: 30),
                width: 300,
                height: 150,
                child: Center(
                  child: Text("Fish Finder 3")),
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