
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



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
                       padding: const EdgeInsets.only(left: 10),
                       child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 90),
                              child: Text("mau memasak", style:GoogleFonts.caladea(
                               textStyle: Theme.of(context).textTheme.displayLarge,
                              fontSize: 15, 
                              color: Colors.white
                                                  ) ,),
                            ),
                       Text("apa hari ini?", style:GoogleFonts.caladea(
                             textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 15, 
                            color: Colors.white
                      ) ,),
                          ],
                        ),
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
              ),
              Container(
                 margin: EdgeInsets.only(left: 10, top: 30),
                child: Row(
                  children: [
                    Container(

                      child: Image.asset("assets/images/bawah.png", width: 230,),
                    ),
                    Container(
                      child: Text("let him cook!", style:GoogleFonts.radioCanada(
                         textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 20, 
                        color: Colors.black
                      ) ,),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
   
    );
  }
}