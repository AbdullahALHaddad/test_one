import 'package:flutter/material.dart';
class LandScape extends StatefulWidget {
  @override
  _LandScapeState createState() => _LandScapeState();
}

class _LandScapeState extends State<LandScape> {
  final _key1 = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'lipsy London',
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   leading: Icon(
      //     Icons.shopping_basket,
      //     color: Colors.black,
      //   ),
      //   backgroundColor: Colors.white,
      //   centerTitle: true,
      // ),
      body: ListView(
        //scrollDirection: Axis.vertical,
        // shrinkWrap: true,
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
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 50,
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
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(

                  width: MediaQuery.of(context).size.width/2.3,
                  height: MediaQuery.of(context).size.height/3,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all(color: Colors.black.withOpacity(0.1)),

                    color: Colors.white,

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                      Padding(
                        padding: const EdgeInsets.only(right:8.0),
                        child:
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),


                          child: Image(
                              image: AssetImage('assets/1.png'),
                              height: 150,
                              width: 100,
                              fit: BoxFit.fill,
                            ),
                        ),
                      ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Align(alignment: Alignment.bottomLeft, child: Text('product_title',style: TextStyle(color: Colors.grey))),
                              Text('Beautiful jeans for boys the make you handsome',style: TextStyle(color: Colors.black,fontSize: 10),),
                              Align(alignment: Alignment.bottomLeft, child: Text('\$250',style: TextStyle(color: Colors.blue,))),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),


                ),
                Container(
                  width: MediaQuery.of(context).size.width/2.3,
                  height: MediaQuery.of(context).size.height/3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all(color: Colors.black.withOpacity(0.1)),

                    color: Colors.white,

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                      children: [

                      Padding(
                        padding: const EdgeInsets.only(right:8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),

                          child: Image(
                              image: AssetImage('assets/1.png'),
                              height: 150,
                              width: 100,
                              fit: BoxFit.fill,
                            ),
                        ),
                      ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Align(alignment: Alignment.bottomLeft, child: Text('product_title',style: TextStyle(color: Colors.grey))),
                              Text('Beautiful jeans for boys the make you handsome',style: TextStyle(color: Colors.black,fontSize: 10),),
                              Align(alignment: Alignment.bottomLeft, child: Text('\$250',style: TextStyle(color: Colors.blue,))),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),


                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/2.3,
                  height: MediaQuery.of(context).size.height/3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all(color: Colors.black.withOpacity(0.1)),

                    color: Colors.white,

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                      children: [

                      Padding(
                        padding: const EdgeInsets.only(right:8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),

                          child: Image(
                              image: AssetImage('assets/1.png'),
                              height: 150,
                              width: 100,
                              fit: BoxFit.fill,
                            ),
                        ),
                      ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Align(alignment: Alignment.bottomLeft, child: Text('product_title',style: TextStyle(color: Colors.grey))),
                              Text('Beautiful jeans for boys the make you handsome',style: TextStyle(color: Colors.black,fontSize: 10),),
                              Align(alignment: Alignment.bottomLeft, child: Text('\$250',style: TextStyle(color: Colors.blue,))),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),


                ),
                Container(
                  width: MediaQuery.of(context).size.width/2.3,
                  height: MediaQuery.of(context).size.height/3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all(color: Colors.black.withOpacity(0.1)),

                    color: Colors.white,

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                      children: [

                      Padding(
                        padding: const EdgeInsets.only(right:8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),

                          child: Image(
                              image: AssetImage('assets/1.png'),
                              height: 150,
                              width: 100,
                              fit: BoxFit.fill,
                            ),
                        ),
                      ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Align(alignment: Alignment.bottomLeft, child: Text('product_title',style: TextStyle(color: Colors.grey))),
                              Text('Beautiful jeans for boys the make you handsome',style: TextStyle(color: Colors.black,fontSize: 10),),
                              Align(alignment: Alignment.bottomLeft, child: Text('\$250',style: TextStyle(color: Colors.blue,))),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),


                ),

              ],
            ),
          ),


        ],
      ),
    );
  }
}
