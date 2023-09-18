import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mysite/app/widgets/custom_outline.dart';
import 'package:mysite/core/theme/app_theme.dart';

class ZoomAnimations extends StatefulWidget {
  const ZoomAnimations({Key? key}) : super(key: key);

  @override
  State<ZoomAnimations> createState() => _ZoomAnimationsState();
}

class _ZoomAnimationsState extends State<ZoomAnimations>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _controller2;
  late final Animation<AlignmentGeometry> _alignAnimation;
  late Animation sizeAnimation;

  String image1 = 'assets/imgs/img1.png'; // Replace with your image paths
  String image2 = 'assets/imgs/img2.png'; // Replace with your image paths
  String currentImage = 'assets/imgs/img1.png'; // Start with the first image
  bool isImage1 = true; // A flag to track the current image

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));

    sizeAnimation = Tween(begin: 0.0, end: 0.2).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.40, 0.75, curve: Curves.easeOut)));
    _controller.forward();
    _controller.addListener(() {
      // setState(() {
      // });


    });
    //
    _controller2 = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    )..repeat(reverse: true);
    _changeImageWithDelay();
    _alignAnimation = Tween<AlignmentGeometry>(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ).animate(
      CurvedAnimation(
        parent: _controller2,
        curve: Curves.easeInOutCubic,
      ),
    );
  }

  void _changeImageWithDelay() {
    Future.delayed(Duration(seconds: 10), () {
      setState(() {
        // Toggle the flag and change the image
        if (isImage1) {
          currentImage = image2;
        } else {
          currentImage = image1;
        }
        isImage1 = !isImage1;
      });
      _changeImageWithDelay(); // Schedule the next image change
    });
  }
  @override
  void dispose() {
    _controller.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    return SizedBox(
      width: size.width / 4,
      height: size.width / 4,
      child: AlignTransition(
        alignment: _alignAnimation,
        child: CustomOutline(
          strokeWidth: 5,
          radius: size.width * 0.2,
          padding: const EdgeInsets.all(5),
          width: size.width * sizeAnimation.value,
          height: size.width * sizeAnimation.value,
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                theme.secondaryColor,
                theme.secondaryColor.withOpacity(0),
                theme.primaryColor.withOpacity(0.1),
                theme.primaryColor
              ],
              stops: const [
                0.2,
                0.4,
                0.6,
                1
              ]),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black.withOpacity(0.8),
              image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.bottomLeft,
                image: AssetImage(currentImage),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
