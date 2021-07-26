import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class New extends StatefulWidget {
  @override
  _NewState createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //
      // ),

      body: Column(
        children: [
          Center(
            child:RaisedButton(
                  child: Text('BottomSheet'),
                  onPressed: () {
                    showModalBottomSheet(
                       // isScrollControlled: true,
                        context: context,
                        builder: (builder){
                          return Container(
                            height: 400,
                              color: Colors.white24,
                              child: ListView.builder(itemCount: 1,
                                  itemBuilder: (context, i){
                                    return Padding(
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

                                                                    Column(
                                                                      children: [
                                                                        Text('ASTER PHARMACY ^',style: TextStyle(fontSize: 15), ),
                                                                        Text('Dubi, international city.\n T-9001,2.2KM away',style: TextStyle(color: Colors.grey),),
                                                                      ],
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
                                                              // boxShadow: [
                                                              //   BoxShadow(
                                                              //       color: Colors.black.withOpacity(.2),
                                                              //       blurRadius: 10,
                                                              //       offset: Offset(0,1)
                                                              //   )
                                                              // ],

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
                                    );
                                  }
                              )

                          );

                        });
                  },
                ),


          ),
          SvgPicture.asset('assets/location.svg',height: 12,width: 12,),
        ],
      ),
    );
  }
}
