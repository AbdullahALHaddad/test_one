import 'package:flutter/material.dart';



import 'package:flutter_svg/svg.dart';
import 'package:qomriah2/featurs/salon/pages/evaluation.dart';
import 'package:qomriah2/featurs/salon/pages/map.dart';
import 'package:qomriah2/featurs/salon/pages/services.dart';

class Saloon extends StatefulWidget {
  @override
  _SaloonState createState() => _SaloonState();
}

class _SaloonState extends State<Saloon> {
  bool isExpanded = true;
  bool isFavorite = true;
  double expandedHeader = 320.0;
 // TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: NotificationListener<ScrollUpdateNotification>(
          onNotification: (scrollNotification){
            final pixels = scrollNotification.metrics.pixels;
            if (expandedHeader - pixels <= kToolbarHeight*2){
              setState(() {
                isExpanded =false;
              });
            }else {
              setState(() {
                isExpanded = true;
              });
            }


          },

          child: DefaultTabController(
            length: 3,
            child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(

                      expandedHeight: expandedHeader,
                      floating: false,
                      pinned: true,
                      backgroundColor: Colors.white,


                      title: Text(
                        'أنتِ أجمل',
                        style: TextStyle(color: isExpanded ? Colors.transparent : Colors.deepPurple),
                      ),
                      bottom: TabBar(
                        labelColor: Colors.purple,
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Tab(
                            //        child: Text('الخدمات'),
                            //        icon: SvgPicture.asset(
                            //   'assets/images/brush.svg',
                            // ),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('الخدمات'),
                                SvgPicture.asset(
                                  'assets/brush.svg',
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            child: Tab(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('الخرائط'),
                                  SvgPicture.asset(
                                    'assets/map-pin.svg',
                                  ),
                                ],
                              ),
                            ),
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Map()),
                              );
                            },
                          ),
                          InkWell(
                            child: Tab(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('التقييم'),
                                  SvgPicture.asset(
                                    'assets/star.svg',
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Evaluation()),
                              );
                            },
                          ),
                        ],
                      ),
                      flexibleSpace: FlexibleSpaceBar(
                        //centerTitle: true,


                        //
                        // title: Text("salon",
                        //     style: TextStyle(
                        //       color: Colors.black,
                        //       fontSize: 16.0,
                        //     )),
                        background: Stack(
                          children: <Widget>[
                            Container(
                              height: MediaQuery.of(context).size.height - 100,
                              width: MediaQuery.of(context).size.width,
                              // width: 400,
                              //  height: 300,
                              color: Colors.transparent,
                              foregroundDecoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/NoPath.png'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Positioned(
                                top: 150.0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30)),
                                    color: Colors.white,
                                  ),
                                  height:
                                      MediaQuery.of(context).size.height - 100,
                                  width: MediaQuery.of(context).size.width,
                                )),
                            Positioned(
                              top: 100,
                              left: (MediaQuery.of(context).size.width / 2) - 75,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(200),
                                    border: Border.all(
                                      width: 10,
                                      color: Colors.white,
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/Mask Group 3.png'),
                                        fit: BoxFit.fill)),
                              ),
                              height: 150,
                              width: 150,
                            ),
                            Positioned(
                              top: 80,
                              //left: (MediaQuery.of(context).size.width / 2) - 100,
                              left: 20,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (isFavorite) {
                                            isFavorite = false;
                                          } else {
                                            isFavorite = true;
                                          }
                                        });
                                        print("favorite_border $isFavorite");
                                      },
                                      icon: isFavorite
                                          ? Icon(
                                              Icons.favorite,
                                              size: 30,
                                              color: Colors.grey,
                                            )
                                          : Icon(
                                              Icons.favorite,
                                              size: 30,
                                              color: Colors.purpleAccent[700],
                                            )),
                                  PopupMenuButton(
                                    itemBuilder: (BuildContext context) {
                                      return [
                                        PopupMenuItem(
                                            child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/alert-circle.svg',
                                            ),
                                            Text('  تقديم شكوى'),
                                          ],
                                        ))
                                      ];
                                    },
                                    icon: SvgPicture.asset(
                                      'assets/dots-vertical.svg',
                                    ),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)),
                                  ),
                                ],
                              ),
                              height: 200,
                              width: 320,
                            ),
                            Positioned(
                              top: 250,
                              left: (MediaQuery.of(context).size.width / 2) - 165,
                              // left: 20,
                              child: Column(
                                children: [
                                  Text('أنتي الأجمل'),
                                  Image.asset(
                                      'assets/Component 31 – 4.png'),
                                  Text('am8:00-pm6:00'),
                                ],
                              ),
                              height: 200,
                              width: 320,
                            ),
                          ],
                        ),
                      ),
                    ),
                    // SliverPersistentHeader(
                    //   delegate: _SliverAppBarDelegate(
                    //
                    //   ),
                    //   pinned: true,
                    // ),
                  ];
                },
                body:

                Column(
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
                //     // Container(
                //     // //  width: (MediaQuery.of(context).size.width ),
                //     //  // height: (MediaQuery.of(context).size.height ),
                //     //   width: 400,
                //     //   height: 220,
                //     //   child: ListView.builder(
                //     //     itemCount: 9,
                //     //     itemBuilder: (context, index) {
                //     //       return Card(
                //     //         child: ListTile(
                //     //           title: Text('مكياج سهرة'),
                //     //           subtitle: Text('ر.ي5000'),
                //     //           leading: Image.asset(
                //     //              'assets/images/valerie-elash-jIYSrboB7FQ-unsplash.png',
                //     //            ),
                //     //           trailing: Icon(Icons.add_circle_outline_rounded),
                //     //
                //     //         ),
                //     //       );
                //     //     },
                //     //   )
                //     // ),
                //     // Card(
                //     //   child: ListTile(
                //     //     title: Text('مكياج سهرة'),
                //     //     subtitle: Text('ر.ي5000'),
                //     //     leading: Image.asset(
                //     //       'assets/images/valerie-elash-jIYSrboB7FQ-unsplash.png',
                //     //     ),
                //     //     trailing: Icon(Icons.add_circle_outline_rounded),
                //     //
                //     //   ),
                //     // )
                //
                //
                //
                //   ],
                // )
                // TabBarView(
                //   children: [Services(), Services(), Services()],
                // )
                // Center(child: Text('Text')),
                ]),
          ),
        ),
      ),
    ));
  }
}
//
// class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
//   _SliverAppBarDelegate(this._tabBar);
//
//   final TabBar _tabBar;
//
//   @override
//   double get minExtent => _tabBar.preferredSize.height;
//   @override
//   double get maxExtent => _tabBar.preferredSize.height;
//
//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return Container(
//       child: _tabBar,
//     );
//   }
//
//   @override
//   bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
//     return false;
//   }
// }
