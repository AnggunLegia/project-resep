
import 'package:flutter/material.dart';



class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: Center(
          child: Text("Resep Kita", style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.white
          )),
        ),
        toolbarHeight: 70,
        backgroundColor: Color.fromARGB(255, 245, 128, 183),
      ),
      body: 
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 300,
                height: 200,
                margin: EdgeInsets.only(top:20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 218, 110, 160),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 4,
                  blurRadius: 3,
                  offset: Offset(0, 3)
                  )],
                ),
                child: Row(
                  children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 5),
                       child: Container(
                        child: Text("Ayo memasak!", style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                          // fontFamily: 'klepon'
                        ),),
                                         ),
                     ),
                    Container(
                      child: Image.asset("assets/images/orang.png",width: 185, height: 500,

                       )
                    ),
                   
                  ],
                ),
              ),

               //button detail
              Container(
                child: Row(
                  children: [
                    Container(
                       width: 80,
                      height: 80,
                      margin: EdgeInsets.only(left: 60, top: 30),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 250, 137, 190),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: Offset(0, 4))
                          ],
                         
                         ), child: Column(
                           children: [
                             Container(
                      child: Image.asset("assets/images/chinese.png",width: 80, 

                       ),
                      

                       ),
                    //     Container(
                    //       child: Text("Chinese Food"),
                    // ),
                           ],
                         ),
                    ),
                    Container(
                       width: 80,
                      height: 80,
                      margin: EdgeInsets.only(left: 21, top: 30),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 250, 137, 190),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: Offset(0, 4))
                          ],
                         ),
                          child: Column(
                           children: [
                             Container(
                      child: Image.asset("assets/images/korean.png",width: 80, 

                       ),
                      

                       ),
                           ]
                    ),
                    ),
                    Container(
                       width: 80,
                      height: 80,
                      margin: EdgeInsets.only(left: 21, top: 30),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 250, 137, 190),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: Offset(0, 4))
                          ],
                         ),
                         child: Column(
                           children: [
                             Container(
                      child: Image.asset("assets/images/sate.png",width: 80, 

                       ),
                      

                       ),
                           ]
                    ),
                    ),
                  
                    
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                       width: 80,
                      height: 80,
                      margin: EdgeInsets.only(left: 60, top: 30),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 250, 137, 190),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: Offset(0, 4))
                          ],
                         ),
                          child: Column(
                           children: [
                             Container(
                      child: Image.asset("assets/images/japan.png",width: 80, 

                       ),
                      

                       ),
                           ]
                    ),
                    ),
                    
                    Container(
                       width: 80,
                      height: 80,
                      margin: EdgeInsets.only(left: 21, top: 30),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 250, 137, 190),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: Offset(0, 4))
                          ],
                         ),
                          child: Column(
                           children: [
                             Container(
                      child: Image.asset("assets/images/dessert.png",width: 80, 

                       ),
                      

                       ),
                           ]
                    ),
                    ),
                    
                    Container(
                       width: 80,
                      height: 80,
                      margin: EdgeInsets.only(left: 21, top: 30),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 250, 137, 190),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: Offset(0, 4))
                          ],
                         ),
                          child: Column(
                           children: [
                             Container(
                      child: Image.asset("assets/images/boba.png",width: 80, 

                       ),
                      

                       ),
                           ]
                    ),
                    ),
                    
                    
                  ],
                ),
              )
            ],
          ),
        ),
   
    );
  }
}