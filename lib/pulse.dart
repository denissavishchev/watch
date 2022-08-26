import 'package:flutter/material.dart';


class Pulse extends StatefulWidget {
  Pulse({Key? key}) : super(key: key);



  @override
  State<Pulse> createState() => _PulseState();
}

class _PulseState extends State<Pulse> with SingleTickerProviderStateMixin{

  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    _animationController = AnimationController(vsync:this,duration: const Duration(seconds: 1));
    _animationController.repeat(reverse: true);
    _animation =  Tween(begin: 2.0,end: 30.0).animate(_animationController)..addListener((){
      setState(() {
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [BoxShadow(
              color: Colors.red,
              blurRadius: _animation.value,
              spreadRadius: _animation.value
          )]
      ),
    );
  }
}
