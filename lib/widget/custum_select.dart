import 'package:flutter/material.dart';

import 'custom_buttom.dart';

class CustumSelect extends StatefulWidget {
  @override
  _CustumSelectState createState() => _CustumSelectState();
}

class _CustumSelectState extends State<CustumSelect> {
  var selected = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: CustomButton(
          text: 'Open',
          isActive: selected == 1,
          color1: Colors.white,
          color2: Colors.black,
          icon: Icons.watch_later,
          onTap: () {
            setState(() {
              selected = 1;
            });
          },
        )),
        Expanded(
          child: CustomButton(
            text: 'Near',
            isActive: selected == 2,
            color1: Colors.white,
            color2: Colors.black,
            icon: Icons.airplanemode_on,
            onTap: () {
              setState(() {
                selected = 2;
              });
            },
          ),
        ),
        Expanded(
          child: CustomButton(
            text: 'Price',
            isActive: selected == 3,
            color1: Colors.white,
            color2: Colors.black,
            icon: Icons.height,
            onTap: () {
              setState(() {
                selected = 3;
              });

            },
          ),
        ),
      ],
    );
  }
}
