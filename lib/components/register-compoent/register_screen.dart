import 'package:flutter/material.dart';
import 'package:meow_meow_app/components/register-compoent/register_widget.dart';
import 'package:meow_meow_app/utils/app_button.dart';
import 'package:meow_meow_app/utils/app_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/logoapp.png', width: w * 0.5),
              SizedBox(height: h * 0.1,),
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
                      height:h * 0.01,
                    ),
                    AppField(
                      imgPath: 'assets/images/user.png',
                      label: 'นามสกุล',
                      isRequired: true,
                    ),
                    SizedBox(
                      height: h * 0.01,
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
                height: h * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35,right: 35),
                child: RegisterWidget(),
              ),
              SizedBox(
                height: h * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Column(
                  children: [
                    AppButton(
                      textbutton: 'ลงทะเบียน',
                      width: w,
                      height: h * 0.05,
                      isOrange: true,
                      onTap: (){
                        print("Click Register");
                      },
                    ),
                    SizedBox(
                      height: h * 0.02,
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