//import 'dart:html';

import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:qomriah2/constance.dart';
import 'package:qomriah2/widget/custom_appbar.dart';
import 'package:qomriah2/widget/custom_buttom.dart';
import 'package:qomriah2/widget/custom_container.dart';
import 'package:qomriah2/widget/custum_select.dart';

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  Set<Marker> _markers = {};
  BitmapDescriptor mapMarker;
  String searchAddr;
  GoogleMapController mapController;
  Completer<GoogleMapController> _controller = Completer();
  // BitmapDescriptor customIcon;
  // Set<Marker> markers;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setCustomMarker();
   // markers = Set.from([]);
  }
  // createMarker(context) {
  //   if (customIcon == null) {
  //     ImageConfiguration configuration = createLocalImageConfiguration(context);
  //     BitmapDescriptor.fromAssetImage(configuration, 'assets/fd.png')
  //         .then((icon) {
  //       setState(() {
  //         customIcon = icon;
  //       });
  //     });
  //   }
  // }
  void setCustomMarker()async{
    mapMarker= await BitmapDescriptor.fromAssetImage(ImageConfiguration(devicePixelRatio: 2.5), 'assets/destination_map_marker.png');

  }
  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(15.369445, 44.191006),
        icon:mapMarker,
        onTap: (){
            showModalBottomSheet(
              isScrollControlled: true,
                backgroundColor: Colors.transparent,
                context: context,
                builder: (builder){
              return buildsheet();

                });
        }
      ));
    });
  }
  Widget buildsheet()=>DraggableScrollableSheet(

      initialChildSize: 0.5,
      minChildSize: 0.5,
      maxChildSize: 1,
      builder: (_,controller)=> Container(
        color:primaryColor2,
        child: ListView(
          controller: controller,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15,right: 8,left: 8,bottom: 8),
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
                          color: primaryColor2,
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


                                color:primaryColor2,
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


                                color:primaryColor2,
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
                          color: primaryColor2,
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
                        color: primaryColor3,
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


                                color: primaryColor2,
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


                                color:primaryColor2,
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
        ),
      )
  );
  // searchandNavigate() {
  //   Geolocator().placemarkFromAddress(searchAddr).then((result) {
  //     mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
  //         target:
  //         LatLng(result[0].position.latitude, result[0].position.longitude),
  //         zoom: 10.0)));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     drawer: Drawer(),
      appBar: MyCustomAppBar(
        height: 150,
      ),
      body: Stack(
        children: [
          GoogleMap(
              onMapCreated: _onMapCreated,
              markers: _markers,
              initialCameraPosition:
                  CameraPosition(target: LatLng(15.369445, 44.191006), zoom: 15)),
          // Positioned(
          //   top: 300.0,
          //   right: 15.0,
          //   left: 15.0,
          //   child: Container(
          //     height: 50.0,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(15.0), color:primaryColor2),
          //     child: TextField(
          //       decoration: InputDecoration(
          //          // hintText: 'Enter Address',
          //           border: InputBorder.none,
          //           contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
          //           suffixIcon: IconButton(
          //               icon: Icon(Icons.search),
          //             //  onPressed: searchandNavigate,
          //               onPressed: (){},
          //               iconSize: 30.0)),
          //       onChanged: (val) {
          //         setState(() {
          //           searchAddr = val;
          //         });
          //       },
          //     ),
          //   ),
          // )

        ],
      ),
    );
  }
}



