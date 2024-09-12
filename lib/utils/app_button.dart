// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:meow_meow_app/utils/app_color.dart';

class AppButton extends StatelessWidget {
  final String textbutton;
  final double width;
  final double height;
  bool? isOrange;
  Function()? onTap;
  AppButton({
    super.key,
    required this.textbutton,
    required this.width,
    required this.height,
    this.isOrange,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return isOrange == true
        ? GestureDetector(
            onTap: onTap,
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                  colors: [AppColor.orange, AppColor.orange2],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Center(
                  child: Text(
                textbutton,
                style: const TextStyle(color: AppColor.white),
              )),
            ),
          )
        : GestureDetector(
            onTap: onTap,
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColor.white,
                border: Border.all(
                  color: AppColor.orange3,
                  width: 2.0,
                ),
              ),
              child: Center(
                child: Text(
                  textbutton,
                  style: const TextStyle(color: AppColor.orange),
                ),
              ),
            ),
          );
  }
}
