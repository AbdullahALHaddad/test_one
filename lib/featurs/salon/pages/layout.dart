import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int size ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Center(
            child: Container(
              padding: EdgeInsets.only(right: 9,left:9),

              height: 230,
              color: Colors.transparent,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(0.00,0.80),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                          //     topLeft: Radius.circular(10),
                          // bottomLeft: Radius.circular(10),
                          //       topRight: Radius.circular(10),
                          //       bottomRight: Radius.circular(10),

                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.07),
                              blurRadius: 10,
                              offset: Offset(0,1),spreadRadius: 10
                          )
                        ],
                        color: Colors.white,
                      ),
                      height: 50,
                      width: (MediaQuery.of(context).size.width/4) *3.5,
                      child:Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Icon(Icons.shopping_cart,color: Colors.red,),
                          Text('Order Now',style: TextStyle(color: Colors.red),),

                        ],),


                    ),
                  ),
                  Container(
                   // padding: EdgeInsets.only(right: 5,left: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)


                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.07),
                            blurRadius: 10,
                            offset: Offset(0,1),spreadRadius: 10
                        )
                      ],
                      color: Colors.white24,
                    ),
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              // boxShadow: [
                              //   BoxShadow(
                              //       color: Colors.black.withOpacity(.2),
                              //       blurRadius: 10,
                              //       offset: Offset(0,1),spreadRadius: 10
                              //   )
                              // ],


                              color: Colors.white,
                            ),
                            height: 170,
                            width: ((MediaQuery.of(context).size.width/4) *3)-20,
                            //color: Colors.red,
                            child: Column(
                              children: [
                                Row(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CircleAvatar(backgroundImage: AssetImage('assets/pic1.png'), ),
                                    ),

                                    Flexible(
                                      child: Column(
                                        children: [
                                          Text('ASTER PHARMACY ^,ASTER PHARMACY ^,ASTER PHARMACY ^',style: TextStyle(fontSize: 15),
                                          overflow: TextOverflow.ellipsis,),
                                          Text('Dubi, international city.\n T-9001,2.2KM away',style: TextStyle(color: Colors.grey),),
                                        ],
                                      ),
                                    ),
                                  ],//mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  // mainAxisSize: MainAxisSize.max,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text('WORKING HOURS',style: TextStyle(color: Colors.grey,fontSize: 12),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 25),
                                            child: Text('01:00 - 17:00',style: TextStyle(color: Colors.black,fontSize: 12),),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text('IN STOCK',style: TextStyle(color: Colors.grey,fontSize: 12),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 35),
                                            child: Text('2/2',style: TextStyle(color: Colors.black,fontSize: 12),),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),


                              color: Colors.white,
                            ),
                            //color: Colors.white,
                            height: 170,
                            width: (MediaQuery.of(context).size.width/4),
                            // color: Colors.green,
                            child: Center(child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('31',style: TextStyle(fontSize: 30),),
                                Text('DHS',style: TextStyle(fontSize: 10,color: Colors.grey),),
                              ],
                            )),
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
