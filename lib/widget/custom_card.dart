import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {
  final String pic;
  final String title;
  final String supTitle;
  final String price;

  const CustomCard({Key key, this.pic, this.title, this.supTitle, this.price}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    print(orientation);
    return orientation == Orientation.portrait ? Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(color: Colors.black.withOpacity(0.1)),

          color: Colors.white,

        ),
        height: MediaQuery.of(context).size.height/3,
        width:MediaQuery.of(context).size.width/2.3,


        child: LayoutBuilder(
          builder: (_,con){
            return  Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Column (

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),


                      child: Image(
                        image: AssetImage(pic),
                        height:con.maxHeight*.5,
                        width:con.maxWidth*.9,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Align(alignment: Alignment.bottomLeft, child: Text(title,style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis,)),
                  Text(supTitle,style: TextStyle(color: Colors.black,fontSize: 10),),
                  Align(alignment: Alignment.bottomLeft, child: Text(price,style: TextStyle(color: Colors.blue,))),
                ],
              )

            );
          },
        )
    ): Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(color: Colors.black.withOpacity(0.1)),

          color: Colors.white,

        ),
        height: MediaQuery.of(context).size.height/3,
        width:MediaQuery.of(context).size.width/2.3,


        child: LayoutBuilder(
          builder: (_,con){
            return  Padding(
                padding: const EdgeInsets.only(left:8.0),
                child:
                Row (

                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Padding(
                padding: const EdgeInsets.only(right: 8),
            child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),


            child: Image(
            image: AssetImage(pic),
            height:con.maxHeight*.9,
            width:con.maxWidth*.3,
            fit: BoxFit.fill,
            ),
            ),
            ),
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(alignment: Alignment.bottomLeft, child: Text(title,style: TextStyle(color: Colors.grey))),
                        Text(supTitle,style: TextStyle(color: Colors.black,fontSize: 10),),
                        Align(alignment: Alignment.bottomLeft, child: Text(price,style: TextStyle(color: Colors.blue,))),
                      ],
                    ),
                  ),
            ],
            )
            );
          },
        )
    );
  }
}
