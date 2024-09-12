import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meow_meow_app/components/register-compoent/register_widget.dart';
import 'package:meow_meow_app/utils/app_button.dart';
import 'package:meow_meow_app/utils/app_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/logoapp.png', width: Get.width * 1),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Column(
              children: [
                AppField(
                  imgPath: 'assets/images/user.png',
                  label: 'ชื่อ',
                  isRequired: true,
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                AppField(
                  imgPath: 'assets/images/user.png',
                  label: 'นามสกุล',
                  isRequired: true,
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                AppField(
                  imgPath: 'assets/images/phone.png',
                  label: 'เบอร์มือถือ',
                  isRequired: true,
                ),
              ],
            ),
          ),
          SizedBox(
            height: Get.height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35,right: 35),
            child: RegisterWidget(),
          ),
          SizedBox(
            height: Get.height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Column(
              children: [
                AppButton(
                  textbutton: 'ลงทะเบียน',
                  width: Get.width,
                  height: Get.height * 0.05,
                  isOrange: true,
                  onTap: (){
                    print("Click Register");
                  },
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}