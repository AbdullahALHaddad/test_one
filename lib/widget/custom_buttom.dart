import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color1;
  final Color color2;
  final IconData icon;
  final Function onTap;
  final bool isActive;

  const CustomButton({
    Key key,
    this.text,
    this.color1,
    this.color2,
    this.icon,
    this.onTap,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(right: 8, top: 5, bottom: 5),
          child: Container(
            //height: 30,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: isActive ? Colors.red : Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.05),
                    blurRadius: 10,
                    offset: Offset(0, 1),
                    spreadRadius: 10)
              ],
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Icon(
                    icon,
                    color: Colors.grey,
                    size: 20,
                  ),
                ),
                Text(
                  text,
                  style: TextStyle(color: color2, fontSize: 15.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
