import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double newHeight = Get.height - padding.top - padding.bottom;
    return Scaffold(
      body: SizedBox(
        width: Get.width,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset('assets/images/sptopleft.png',
                  width: newHeight * 0.15),
            ),
            Positioned(
              top: newHeight / 2.5,
              child: Image.asset('assets/images/logoapp.png',
                  width: newHeight * 0.5),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                'assets/images/spbtleft.png',
                width: newHeight * 0.25,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              left: Get.width / 3 - 50,
              child: Image.asset(
                'assets/images/spbtcenter.png',
                width: newHeight * 0.35,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              right: -20,
              child: Image.asset(
                'assets/images/spbtright.png',
                width: newHeight * 0.3,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
