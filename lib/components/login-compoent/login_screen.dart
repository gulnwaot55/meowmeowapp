import 'package:flutter/material.dart';
import 'package:meow_meow_app/components/home-component/home_screen.dart';
import 'package:meow_meow_app/components/register-compoent/register_screen.dart';
import 'package:meow_meow_app/utils/app_button.dart';
import 'package:meow_meow_app/utils/app_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/logoapp.png', width: w * 1),
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
                      height: h * 0.01,
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
                height: h * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Column(
                  children: [
                    AppButton(
                      textbutton: 'เข้าสู่ระบบ',
                      width: w,
                      height: h * 0.05,
                      isOrange: true,
                      onTap: (){
                        print("Go to Home Screen");
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                      },
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppButton(
                          onTap: (){
                            print("Click ลืมรหัส");
                          },
                          textbutton: 'ลืมรหัสผ่าน',
                          width:w * 0.35,
                          height: h * 0.05,
                          isOrange: false,
                        ),
                        AppButton(
                          onTap: (){
                            Navigator.pop(context, MaterialPageRoute(builder: (context)=> RegisterScreen()));
                          },
                          textbutton: 'สมัครสมาชิก',
                          width: w * 0.35,
                          height: h * 0.05,
                          isOrange: false,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
