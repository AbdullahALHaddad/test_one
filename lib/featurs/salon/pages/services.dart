import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  double d= kToolbarHeight;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white24,
          width: double.infinity,
         //color: ColorTheme.Color2,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 8,
              left: 8,
              right: 8,
              bottom: 8,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      height: 62,
                      width: 59,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'assets/Group 54.svg',
                          ),
                          Text("الكل",
                            // style: AppTheme.displaytabs
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      height: 62,
                      width: 59,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'assets/Group 54.svg',
                          ),
                          Text("الكل",
                            // style: AppTheme.displaytabs
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      height: 62,
                      width: 59,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'assets/Group 54.svg',
                          ),
                          Text("الكل",
                            // style: AppTheme.displaytabs
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      height: 62,
                      width: 59,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'assets/Group 54.svg',
                          ),
                          Text("الكل",
                            // style: AppTheme.displaytabs
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      height: 62,
                      width: 59,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'assets/Group 54.svg',
                          ),
                          Text("الكل",
                            // style: AppTheme.displaytabs
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      height: 62,
                      width: 59,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'assets/Group 54.svg',
                          ),
                          Text("الكل",
                            // style: AppTheme.displaytabs
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      height: 62,
                      width: 59,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'assets/Group 54.svg',
                          ),
                          Text("الكل",
                            // style: AppTheme.displaytabs
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      height: 62,
                      width: 59,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'assets/Group 54.svg',
                          ),
                          Text("الكل",
                            // style: AppTheme.displaytabs
                          ),
                        ],
                      ),
                    ),
                  ),




                ],
              ),
            ),
          ),
        ),

        // Container(
        // //  width: (MediaQuery.of(context).size.width ),
        //  // height: (MediaQuery.of(context).size.height ),
        //   width: 400,
        //   height: 220,
        //   child: ListView.builder(
        //     itemCount: 9,
        //     itemBuilder: (context, index) {
        //       return Card(
        //         child: ListTile(
        //           title: Text('مكياج سهرة'),
        //           subtitle: Text('ر.ي5000'),
        //           leading: Image.asset(
        //              'assets/images/valerie-elash-jIYSrboB7FQ-unsplash.png',
        //            ),
        //           trailing: Icon(Icons.add_circle_outline_rounded),
        //
        //         ),
        //       );
        //     },
        //   )
        // ),
        // Card(
        //   child: ListTile(
        //     title: Text('مكياج سهرة'),
        //     subtitle: Text('ر.ي5000'),
        //     leading: Image.asset(
        //       'assets/images/valerie-elash-jIYSrboB7FQ-unsplash.png',
        //     ),
        //     trailing: Icon(Icons.add_circle_outline_rounded),
        //
        //   ),
        // )



      ],
    );
  }
}
