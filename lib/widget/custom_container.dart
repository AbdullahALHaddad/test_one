import 'package:flutter/material.dart';
// ignore: camel_case_types
class Custom_Container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  DraggableScrollableSheet(
      initialChildSize: 0.5,
      minChildSize: 0.5,
      maxChildSize: 1,
      builder: (_,controller)=> ListView(
        controller: controller,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
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


                                color: Colors.white,
                              ),
                              height: 170,
                              width: ((MediaQuery.of(context).size.width/4) *3)-20,

                              child: Column(
                                children: [
                                  Row(

                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CircleAvatar(backgroundImage: AssetImage('assets/pic1.png'), ),
                                      ),

                                      Column(
                                        children: [
                                          Text('ASTER PHARMACY ^',style: TextStyle(fontSize: 15), ),
                                          Text('Dubi, international city.\n T-9001,2.2KM away',style: TextStyle(color: Colors.grey),),
                                        ],
                                      ),
                                    ],//mainAxisAlignment: MainAxisAlignment.spaceEvenly,

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
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
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


                                color: Colors.white,
                              ),
                              height: 170,
                              width: ((MediaQuery.of(context).size.width/4) *3)-20,

                              child: Column(
                                children: [
                                  Row(

                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CircleAvatar(backgroundImage: AssetImage('assets/pic1.png'), ),
                                      ),

                                      Column(
                                        children: [
                                          Text('ASTER PHARMACY ^',style: TextStyle(fontSize: 15), ),
                                          Text('Dubi, international city.\n T-9001,2.2KM away',style: TextStyle(color: Colors.grey),),
                                        ],
                                      ),
                                    ],//mainAxisAlignment: MainAxisAlignment.spaceEvenly,

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
          ],
      )
    );
  }
}

