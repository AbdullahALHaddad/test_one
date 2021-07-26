import 'package:flutter/material.dart';
class CustomGrid extends StatefulWidget {
  @override
  _CustomGridState createState() => _CustomGridState();
}

class _CustomGridState extends State<CustomGrid> {
  final list_item =[
    {
      "name":"item 1",
      "pic":"assets/1.png",
      "title":"LONDON LIPSY",
      "subtitle":"Beautiful jeans for boys the make you handsome",
      "price":125,
    },
    {
      "name":"item 2",
      "pic":"assets/2.png",
      "title":"LONDON LIPSY",
      "subtitle":"Beautiful jeans for boys the make you handsome",
      "price":345,
    },
    {
      "name":"item 3",
      "pic":"assets/3.png",
      "title":"LONDON LIPSY",
      "subtitle":"Beautiful jeans for boys the make you handsome",
      "price":455,
    },
    {
      "name":"item 4",
      "pic":"assets/4.png",
      "title":"LONDON LIPSY",
      "subtitle":"Beautiful jeans for boys the make you handsome",
      "price":985,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: list_item.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.9),
        itemBuilder: (BuildContext context, int index){
        return Product(
          product_name:list_item[index]['name'],
          product_pic:list_item[index]['pic'],
          product_title:list_item[index]['title'],
          product_subtitle:list_item[index]['subtitle'],
          product_price:list_item[index]['price'],


        );
        });
  }
}

class Product extends StatelessWidget {
  final product_name;
  final product_title;
  final product_pic;
  final product_subtitle;
  final product_price;

  const Product({Key key, this.product_name, this.product_title, this.product_pic, this.product_subtitle, this.product_price}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Hero(
        tag: product_name,
        child: InkWell(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //
            ClipRRect(

            borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(product_pic),
            ),
                Align(alignment: Alignment.bottomLeft, child: Text(product_title,style: TextStyle(color: Colors.grey))),
                Text(product_subtitle,style: TextStyle(color: Colors.black,fontSize: 10),),
                Align(alignment: Alignment.bottomLeft, child: Text('\$$product_price',style: TextStyle(color: Colors.blue,))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

