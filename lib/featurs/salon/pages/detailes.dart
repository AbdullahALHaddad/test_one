import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Detailes extends StatefulWidget {
  @override
  _DetailesState createState() => _DetailesState();
}

class _DetailesState extends State<Detailes> {
  bool isExpanded = true;
  bool isFavorite = true;
  double expandedHeader = 200.0;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: DefaultTabController(
          length: 3,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverPersistentHeader(
                  delegate: _SliverAppBarDelegate (expandedHeight: 330),
                  pinned: true,
                  floating: true,
                ),

              ];
            },
            body:
            //TabBarView(
            //   children: [Services(), Services(), Services()],
            // )
            //
            Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('الخدمات',style: TextStyle(color: Colors.purple),),
                          SvgPicture.asset(
                            'assets/images/brush.svg',
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('الخدمات',style: TextStyle(color: Colors.purple),),
                          SvgPicture.asset(
                            'assets/images/brush.svg',
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('الخدمات',style: TextStyle(color: Colors.purple),),
                          SvgPicture.asset(
                            'assets/images/brush.svg',
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({this.expandedHeight});
  final double expandedHeight;




  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {


    return
      Stack(
        fit: StackFit.loose,
  //  overflow: Overflow.visible,
        children: <Widget>[



          Opacity(
            opacity:1- shrinkOffset / expandedHeight,
            child: Container(
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
          ),
          //  Image.asset('assets/images/NoPath.png'),
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

          // Center(
          //   child: Opacity(
          //       opacity: shrinkOffset / expandedHeight,
          //       child: AppBar(
          //         title: Text('انتي اجمل'),
          //       )
          //   ),
          // ),







        ],
      );








  }
  double appear(double shrinkOffset) => shrinkOffset / expandedHeight;

  double disappear(double shrinkOffset) => 1 - shrinkOffset / expandedHeight;


  @override
  double get minExtent => kToolbarHeight +20;
  @override
  double get maxExtent => expandedHeight;
  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return true;
  }
}
