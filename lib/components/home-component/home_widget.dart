import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meow_meow_app/utils/app_color.dart';
import 'package:meow_meow_app/utils/app_constant.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(1.5),
        child: Image.asset(
          'assets/images/logoappbar.png',
        ),
      ),
      title: const AppBarSearchWidget(),
      actions: [
        GestureDetector(
          onTap: () {
            print('Click Like');
          },
          child: Image.asset(
            'assets/images/heart.png',
            fit: BoxFit.cover,
            width: w * 0.08,
          ),
        )
      ],
    );
  }
}

class AppBarSearchWidget extends StatelessWidget {
  const AppBarSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return TextField(
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(12),
          child: Image.asset(
            'assets/images/search.png',
            width: w * 0.05,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: AppColor.orange2,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: AppColor.orange,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: AppColor.orange,
            width: 1,
          ),
        ),
      ),
    );
  }
}

class BottomNavBarApp extends StatelessWidget {
  const BottomNavBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: h * 0.1,
      color: AppColor.white,
      child: Row(
        children: [
          Text("data"),
        ],
      ),
    );
  }
}
