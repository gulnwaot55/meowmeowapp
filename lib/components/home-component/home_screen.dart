import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meow_meow_app/components/home-component/home_widget.dart';
import 'package:meow_meow_app/utils/app_color.dart';
import 'package:meow_meow_app/utils/app_corousel_slide.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> dataCarouselSlider = [
      {
        'image': 'assets/images/preimg.png',
      },
      {
        'image': 'assets/images/preimg.png',
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: AppBarWidget(),
      ),
      body: Container(
        color: AppColor.orange2,
        width: Get.width,
        child: Column(
          children: [
            AppCarouselSlider(dataList: dataCarouselSlider),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarApp(),
    );
  }
}
