import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarouselSlideControllers extends GetxController {
  var currentIndex = 0.obs;
  PageController controller = PageController(viewportFraction: 1.0, keepPage: true);
  Rx<PageController> controllerEvent = PageController(viewportFraction: 1.0, keepPage: true).obs;

  void onIndexChanged(int index, CarouselPageChangedReason reason) {
    currentIndex.value = index;
    controller = PageController(
        viewportFraction: 0.8, keepPage: true, initialPage: index);
    update();
  }
}