import 'package:flutter/material.dart';
import 'package:flutter_animation_1/widget.dart';
import 'dart:math' as math;

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
with SingleTickerProviderStateMixin {

  AnimationController? animationController;
  Animation<double>? animation;


  @override
  void initState(){
   super.initState();
   animationController = AnimationController(
                                             duration: Duration(seconds: 5),
                                             vsync: this
                                            );

   // final curveAnimation = CurvedAnimation(
   //     parent: animationController as Animation<double>,
   //     curve: Curves.bounceOut,
   //     reverseCurve: Curves.bounceOut
   // );

   animation = Tween<double>(begin: 0, end: 2 * math.pi)
                  .chain(CurveTween(curve: Curves.bounceIn)).animate(animationController!)
                  ..addListener(() {setState(() {});})
                  ..addStatusListener((status) {
                    if(status == AnimationStatus.completed){
                      animationController!.reverse();
                    }
                    else if(status == AnimationStatus.dismissed){
                      animationController!.forward();
                    }
                  });
   animationController?.forward();
  }

  @override
  void dispose() {
    animationController?.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Transform.rotate(
          angle: animation!.value,
        child: Container(
          alignment: Alignment.center,
            padding: EdgeInsets.all(30),
            child: ItemX(),
        ),
      ),
    );
  }
}
