import 'package:flutter/material.dart';

class fissh extends StatefulWidget {
  const fissh({super.key});

  @override
  State<fissh> createState() => _fisshState();
}

class _fisshState extends State<fissh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          color: Colors.blue[400],
        height: 60,
        shadowColor: Colors.black38,
          child: Row(
            children: [
               Padding(
                padding: const EdgeInsets.only(left: 50),
                
                  child: Text("ikan", 
                          style: TextStyle(
                            color: Colors.black,
                          ),),
                 
                
              ),
              
              
                      Padding(
                        padding: const EdgeInsets.only(left: 160),
                        child: Text("laut", 
                            style: TextStyle(
                              color: Colors.black,
                            ),),
                      ),
                        
                  ],
                ),

              ),
             
              
            
          
      appBar: AppBar(
        title: Text('Fish Finder'),
        backgroundColor: Colors.blue[400],
      ),
        body: Container(
          color: Colors.blue[300],
          child: Column(
            
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 6),
                    child: Column(
                      
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only( bottom: 60, top: 195),
                              child: Text("0"),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only( bottom: 60),
                          child: Text("9"),
                        ),
                        Container(
                          padding: EdgeInsets.only( bottom: 60),
                          child: Text("18"),
                        ),
                        Container(
                          padding: EdgeInsets.only( bottom: 60),
                          child: Text("27"),
                        ),
                        Container(
                          child: Text("36"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:10),
                    width: 2,
                    height:532,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:Colors.black,
                        width: 2,
                         )
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left:0, top: 170),
                        width: 206,
                        height:50,
                        child: Center(
                          child: Text("perahu", style: 
                          TextStyle(
                            color: Colors.white
                          ),),
                        ),
                        decoration: BoxDecoration(
                          // border: Border.all(
                          //   color:Colors.black,
                          //   width: 2,
                          //    ),
                             color: Colors.brown
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:0),
                        width: 326,
                        height:330,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(margin: EdgeInsets.only(top: 25, left: 20),
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Colors.red[400],
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                ),
                                Container(margin: EdgeInsets.only(top: 100, left: 30),
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.red[400],
                                borderRadius: BorderRadius.circular(15)
                              ),
                            ),
                             Container(margin: EdgeInsets.only(top: 10, left: 20),
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.red[400],
                                borderRadius: BorderRadius.circular(15)
                              ),
                            ),
                             Container(margin: EdgeInsets.only(top: 40),
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.red[400],
                                borderRadius: BorderRadius.circular(15)
                              ),
                            ),
                             Container(margin: EdgeInsets.only(top: 0),
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.red[400],
                                borderRadius: BorderRadius.circular(15)
                              ),
                            ),
                             Container(margin: EdgeInsets.only(top: 90, left: 50
                             ),
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.red[400],
                                borderRadius: BorderRadius.circular(15)
                              ),
                            ),
                              ],
                            ),
                            Container(padding: EdgeInsets.only(top: 180, left: 180),
                              child: Text("Waktu berlangsung", style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          // border: Border.all(
                          //   color:Colors.black,
                          //   width: 2,
                          //    ),
                             color: Colors.blue[700]
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:0),
                        width: 326,
                        height:2,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:Colors.black,
                            width: 2,
                             ),
                            //  color: Colors.blue[300]
                        ),
                      ),
                      Container(
                    margin: EdgeInsets.only(left: 0),
                    child: Row(
                      
                      children: [
                        Container(
                         padding: EdgeInsets.only( left: 0),
                         child: Text("1m20"),
                           
                        ),
                        Container(
                          padding: EdgeInsets.only( left: 35),
                          child: Text("1m30"),
                        ),
                        Container(
                          padding: EdgeInsets.only( left: 35),
                          child: Text("1m40"),
                        ),
                        Container(
                          padding: EdgeInsets.only( left: 35),
                          child: Text("1m50"),
                        ),
                        Container(
                          padding: EdgeInsets.only( left: 35, right: 30),
                          child: Text("1m60"),
                        ),
                      ],
                    ),
                  ),
                    ],
                  ),
                ],
              )
            ],
          ),
        )
      
    );
  }
}