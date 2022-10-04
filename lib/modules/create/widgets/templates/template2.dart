import 'package:devffest_ilorin/constants/app_color.dart';
import 'package:flutter/material.dart';

class Template2 extends StatelessWidget {
  const Template2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      color: AppColor.shadesOfBlue3,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -8,
            left: -8,
            child: Container(
              height: 400,
              width: 400,
              color: AppColor.primaryBlueColor,
            ),
          ),
          Positioned(
            left: -30,
            top: 15,
            child: Container(
              height: 200,
              width: 200,
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.shadesOfYellow6,
              ),
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.teal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
