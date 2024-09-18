// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_sizer/flutter_sizer.dart';
// import 'package:get/get.dart';
// import 'package:meow_meow_app/controllers/carousel_slide_controller.dart';
// import 'package:meow_meow_app/utils/app_color.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:url_launcher/url_launcher.dart';

// class AppCarouselSlider extends StatefulWidget {
//   final List<Map<String, dynamic>> dataList;
//   const AppCarouselSlider({Key? key, required this.dataList})
//       : super(key: key);

//   @override
//   State<AppCarouselSlider> createState() => _AppCarouselSliderState();
// }

// class _AppCarouselSliderState extends State<AppCarouselSlider> {
//   CarouselSlideControllers carouselSlideControllers =
//       Get.put(CarouselSlideControllers());

//   int currentPage = 0;

//   final PageController _pageController = PageController(viewportFraction: 0.9);
//   double _currentPage = 0.0;
//   double _scaleFactor = 0.85;

//   void onIndexChanged(int index, CarouselPageChangedReason reason) {}

//   Future<void> _launchURL(String url) async {
//     if (!await launchUrl(Uri.parse(url))) {
//       throw Exception('Could not launch $url');
//     }
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _pageController.addListener(() {
//       setState(() {
//         _currentPage = _pageController.page ?? 0.0;
//         print(_currentPage);
//       });
//     });
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     _pageController.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // PageView
//     return SizedBox(
//         child: Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Container(
//           height: 25.5.h,
//           width: Get.width,
//           padding: EdgeInsets.only(top: Get.height * .02),
//           child: PageView.builder(
//             physics: BouncingScrollPhysics(),
//             pageSnapping: true,
//             controller: _pageController,
//             itemCount: widget.dataList.length,
//             onPageChanged: (index) {
//               setState(() {
//                 currentPage = index;
//               });
//             },
//             itemBuilder: (_, index) {
//               Matrix4 matrix = Matrix4.identity();
//               // matrix
//               if (index == _currentPage.floor()) {
//                 // var currScale = 1.0;
//                 var currScale = 1 - (_currentPage - index) * (1 - _scaleFactor);
//                 var currTran = 22.5.h * (1 - currScale) / 2;
//                 matrix = Matrix4.diagonal3Values(1.0, currScale, 1.0)
//                   ..setTranslationRaw(0, currTran, 0);
//               } else if (index == _currentPage.floor() + 1) {
//                 // var currScale = 0.8;
//                 var currScale = _scaleFactor +
//                     (_currentPage - index + 1) * (1 - _scaleFactor);
//                 var currTran = 22.5.h * (1 - currScale) / 2;
//                 matrix = Matrix4.diagonal3Values(1.0, currScale, 1.0)
//                   ..setTranslationRaw(0, currTran, 0);
//               } else if (index == _currentPage.floor() - 1) {
//                 // var currScale = 0.8;
//                 var currScale = 1 - (_currentPage - index) * (1 - _scaleFactor);
//                 var currTran = 22.5.h * (1 - currScale) / 2;
//                 matrix = Matrix4.diagonal3Values(1.0, currScale, 1.0)
//                   ..setTranslationRaw(0, currTran, 0);
//               } else {
//                 var currScale = 0.85;
//                 matrix = Matrix4.diagonal3Values(1.0, currScale, 1.0)
//                   ..setTranslationRaw(0, 22.5.h * (1 - _scaleFactor) / 2, 0);
//               }

//               // metrix
//               return Transform(
//                 transform: matrix,
//                 child: Container(
//                   padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
//                   child: GestureDetector(
//                       onTap: () {
//                         _launchURL(widget.dataList[index]['link']);
//                       },
//                       child: Container(
//                         // margin: const EdgeInsets.all(2),
//                         decoration: BoxDecoration(
//                           color: AppColor.white,
//                           borderRadius: BorderRadius.circular(10),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black.withOpacity(0.15),
//                               spreadRadius: 0,
//                               blurRadius: 1, // Increased blur radius
//                               offset: const Offset(0, 0),
//                             )
//                           ],
//                         ),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(10.0),
//                           child: Image.network(
//                             widget.dataList[index]['banner'],
//                             fit: BoxFit.fill,
//                             // height: Get.height * 3,
//                             width: Get.width,
//                           ),
//                         ),
//                       )),
//                 ),
//               );
//             },
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(top: Get.height * .02),
//           child: SmoothPageIndicator(
//             controller: _pageController,
//             count: widget.dataList.length,
//             effect: ExpandingDotsEffect(
//                 dotHeight: 7,
//                 dotWidth: 7,
//                 dotColor: Colors.grey.withOpacity(0.5),
//                 spacing: 5,
//                 activeDotColor: AppColor.black,
//                 paintStyle: PaintingStyle.fill),
//           ),
//         ),
//       ],
//     ));
//   }
// }

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