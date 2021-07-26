import 'package:flutter/material.dart';
class AnimatedIcon2 extends StatefulWidget {
  @override
  _AnimatedIcon2State createState() => _AnimatedIcon2State();
}

class _AnimatedIcon2State extends State<AnimatedIcon2>
with SingleTickerProviderStateMixin{

   AnimationController controller;
   bool isPlaying = false;
   @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
          duration: Duration(milliseconds: 1000),
    );

  }
  @override
  void dispose() {
controller.dispose();
super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Icon'),
      ),
      body: Center(
        child: IconButton(
          iconSize: 150,
          icon: AnimatedIcon(
            icon: AnimatedIcons.play_pause,

            color: Colors.cyan,
            progress: controller,

          ),
          onPressed: toggleIcon,
        ),
      ),
    );

  }
   void toggleIcon() => setState((){
     isPlaying = !isPlaying;
     isPlaying?controller.forward(): controller.reverse();
   });
}
