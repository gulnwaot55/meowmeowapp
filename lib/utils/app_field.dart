import 'package:flutter/material.dart';
import 'package:meow_meow_app/utils/app_color.dart';

class AppField extends StatelessWidget {
  bool? isPassword;
  final bool isRequired;
  final String imgPath;
  final String label;
  TextEditingController? textEditingController;
  AppField(
      {super.key,
      this.isPassword,
      required this.isRequired,
      this.textEditingController,
      required this.imgPath,
      required this.label});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return isPassword != true
        ? Column(
            children: [
              TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  label: Row(
                    children: [
                      Text(
                        label,
                        style: const TextStyle(color: AppColor.grey),
                      ),
                      isRequired == true
                          ? const Text(
                              "*",
                              style: TextStyle(color: AppColor.red),
                            )
                          : Container(),
                    ],
                  ),
                  icon: Image.asset(
                    imgPath,
                    width: w * 0.05,
                  ),
                  border: InputBorder.none,
                  isDense: true,
                ),
              ),
              const Divider(),
            ],
          )
        : Column(
            children: [
              TextField(
                obscureText: true,
                controller: textEditingController,
                decoration: InputDecoration(
                  label: Row(
                    children: [
                      Text(
                        label,
                        style: const TextStyle(color: AppColor.grey),
                      ),
                      isRequired == true
                          ? const Text(
                              "*",
                              style: TextStyle(color: AppColor.red),
                            )
                          : Container(),
                    ],
                  ),
                  icon: Image.asset(
                    imgPath,
                    width: w * 0.05,
                  ),
                  border: InputBorder.none,
                  isDense: true,
                ),
              ),
              const Divider(),
            ],
          );
  }
}
