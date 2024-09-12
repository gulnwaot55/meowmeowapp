import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:meow_meow_app/utils/app_color.dart';

class RegisterWidget extends StatelessWidget {
  RegisterWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Divider(
                // color: AppColor.grey,
                ),
            Text(
              'Or',
              style: TextStyle(color: AppColor.grey),
            ),
            Divider(
                // color: AppColor.grey,
                ),
          ],
        ),
        SizedBox(
          height: Get.height * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
                print("Register Facebook");
              },
              child: Container(
                width: Get.width * 0.4,
                height: Get.height * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColor.white,
                  border: Border.all(
                    color: AppColor.grey,
                    width: 2.0,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/facebooklogo.png',
                      width: Get.width * 0.075,
                    ),
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    const Text('Facebook'),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                print("Register Google");
              },
              child: Container(
                width: Get.width * 0.4,
                height: Get.height * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColor.white,
                  border: Border.all(
                    color: AppColor.grey,
                    width: 2.0,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/googlelogo.webp',
                      width: Get.width * 0.1,
                    ),
                    SizedBox(
                      width: Get.width * 0.01,
                    ),
                    const Text('Google'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
