import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qomriah2/constance.dart';
import 'package:qomriah2/widget/custum_select.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  MyCustomAppBar({
    Key key,
    @required this.height,
  }) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              color: primaryColor3,
              child: Padding(

                padding: EdgeInsets.all(5),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0), color: primaryColor2),

                  child: Row(children: [
                    IconButton(
                      icon: Icon(Icons.menu,color:primaryColor1,),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    ),
                    Expanded(
                        child: Text('Dubi - Abu Hail')
                    ),
                    IconButton(
                      icon: Icon(Icons.close,color: Colors.black.withOpacity(.09),),
                      onPressed: () => null,
                    ),
                  ]),
                ),
              ),
            ),
          ),
          Container(
            color:primaryColor3,
            child: Padding(

              padding: EdgeInsets.all(5),
              child: Container(
                height:40,
                //MediaQuery.of(context).size.height*0.50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0), color: primaryColor2),

                // color: Colors.white,
                // padding: EdgeInsets.all(5),
                child: Row(children: [
                  Transform.rotate(
                    angle: pi/2,
                    child: IconButton(
                      icon: SvgPicture.asset('assets/pill.svg',color:primaryColor1,height:20,width: 20,),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    ),
                  ),
                  Container(
                    //height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0), color: Colors.black.withOpacity(.05)),


                      child:Padding(
                        padding: const EdgeInsets.all(3),
                        child: Row(
                          children: [
                            Text(' Insulin Apidra',style: TextStyle(color: Colors.grey,fontSize: 15.0),),
                            Icon(Icons.close,color: Colors.grey),

                          ],
                        ),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5,top: 5,bottom: 5),
                    child: Container(
                      //height: 30,

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0), color: Colors.black.withOpacity(.05)),


                        child:Padding(
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Text(' Acitamol ',style: TextStyle(color: Colors.grey,fontSize: 15.0),),
                              Icon(Icons.close,color: Colors.grey),

                            ],
                          ),
                        )
                    ),
                  ),


                ]),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 0,right: 0,),
              child: CustumSelect()
          ),


        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}