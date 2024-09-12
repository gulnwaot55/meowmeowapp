import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:meow_meow_app/components/register-compoent/register_screen.dart';
import 'package:meow_meow_app/utils/app_button.dart';
import 'package:meow_meow_app/utils/app_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  label: 'รหัสสมาชิก',
                  isRequired: false,
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                AppField(
                  isPassword: true,
                  imgPath: 'assets/images/lock.png',
                  label: 'รหัสผ่าน',
                  isRequired: false,
                ),
              ],
            ),
          ),
          SizedBox(
            height: Get.height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Column(
              children: [
                AppButton(
                  textbutton: 'เข้าสู่ระบบ',
                  width: Get.width,
                  height: Get.height * 0.05,
                  isOrange: true,
                  onTap: (){
                    print("Go to Home Screen");
                  },
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppButton(
                      textbutton: 'ลืมรหัสผ่าน',
                      width: Get.width * 0.35,
                      height: Get.height * 0.05,
                      isOrange: false,
                    ),
                    AppButton(
                      onTap: () => Get.to(()=> const RegisterScreen()),
                      textbutton: 'สมัครสมาชิก',
                      width: Get.width * 0.35,
                      height: Get.height * 0.05,
                      isOrange: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
