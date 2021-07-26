import 'package:flutter/material.dart';
import 'package:qomriah2/responsive_ui/custom_grid.dart';
import 'package:qomriah2/responsive_ui/landscape.dart';
import 'package:qomriah2/widget/custom_card.dart';

class Page1 extends StatefulWidget {

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  @override
  Widget build(BuildContext context) {
   // double containerwidth = _key1.currentContext.size.width;
   // double screenHeight = MediaQuery.of(context).size.height;
   // double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'lipsy London',
          style: TextStyle(color: Colors.black),
        ),
        leading: Icon(
          Icons.shopping_basket,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body:  ListView(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'LIPSY',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 30),
                      ),
                      Text(
                        'LONDON',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                          child: Text(
                            'what is the hottest trend right now?lispy has all what you need to make you look charm and to atract all the girls and the boys hhhh',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                            softWrap: true,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, top: 5.0, right: 20.0, bottom: 5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),
                    height: (MediaQuery.of(context).size.height * 0.08),
                    width: double.infinity,
                    child:Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: TextFormField(
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                //  size: con.maxWidth*0.08,

                                ),
                                hintText: 'Type ant thing',
                                hintStyle: TextStyle(color: Colors.grey),
                                suffixIcon: Icon(
                                  Icons.add_road,
                                  color: Colors.black,

                                ),
                                enabledBorder: InputBorder.none,
                              ),
                            ),
                          ),
                        )

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      CustomCard(
                        pic: "assets/1.png",
                        title:'product_title produc t_title prod t_title' ,
                        supTitle:'Beautiful jeans for boys the make you handsome' ,
                        price: '\$250',
                      ),
                      CustomCard(
                        pic: "assets/NoPath.png",
                        title:'Blue T-Shirt , designed by Abdullah Abdulrahman' ,
                        supTitle:'An awesome T-Shirt for both men and women the best trend' ,
                        price: '\$330',
                      ),


                    ],
                  ),
                ),




              ],
            )



    );
  }
}
