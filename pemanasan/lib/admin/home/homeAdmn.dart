import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pemanasan/admin/add/adddata.dart';

class PageHomeAdmn extends StatefulWidget {
  const PageHomeAdmn({super.key});

  @override
  State<PageHomeAdmn> createState() => _PageHomeAdmnState();
}

class _PageHomeAdmnState extends State<PageHomeAdmn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Center(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>PageAddData()));
                  },
                  child: Container(
                    width: 300,
                    height: 150,
                    margin: EdgeInsets.only(top:20),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[200],
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
                           padding: const EdgeInsets.only(left: 20),
                           child: Container(
                            
                                
                                  child: Text("Add Data", style:GoogleFonts.caladea(
                                   textStyle: Theme.of(context).textTheme.displayLarge,
                                  fontSize: 30, 
                                  color: Colors.black, 
                                  fontWeight: FontWeight.w500
                                                      ) ,),
                                ),
                           
                              
                            ),
                                             
                         
                        Container(
                          child: Image.asset("assets/images/add.png",width: 165, height: 500,
                          
                           ),
                        ),
                       
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  height: 150,
                  margin: EdgeInsets.only(top:20),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[200],
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
                         padding: const EdgeInsets.only(left: 20),
                         child: Container(
                          
                              
                                child: Text("Add Data", style:GoogleFonts.caladea(
                                 textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 30, 
                                color: Colors.black, 
                                fontWeight: FontWeight.w500
                                                    ) ,),
                              ),
                         
                            
                          ),
                                           
                       
                      Container(
                        child: Image.asset("assets/images/add.png",width: 165, height: 500,
          
                         ),
                      ),
                     
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  height: 150,
                  margin: EdgeInsets.only(top:20),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[200],
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
                         padding: const EdgeInsets.only(left: 20),
                         child: Container(
                          
                              
                                child: Text("Add Data", style:GoogleFonts.caladea(
                                 textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 30, 
                                color: Colors.black, 
                                fontWeight: FontWeight.w500
                                                    ) ,),
                              ),
                         
                            
                          ),
                                           
                       
                      Container(
                        child: Image.asset("assets/images/add.png",width: 165, height: 500,
          
                         ),
                      ),
                     
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}