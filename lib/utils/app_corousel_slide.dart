import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AppCarouselSlider extends StatelessWidget {
  final List<Map<String, dynamic>> dataList;

  AppCarouselSlider({required this.dataList});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 200),
      items: dataList.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Image.asset(
              item['image'],
              fit: BoxFit.cover,
            );
          },
        );
      }).toList(),
    );
  }
}