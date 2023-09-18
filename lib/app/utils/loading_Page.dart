import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter/material.dart';
class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
        child: LoadingAnimationWidget.threeRotatingDots(
          color: Colors.white,
          size: 100,
        )
    ),);
  }
}
