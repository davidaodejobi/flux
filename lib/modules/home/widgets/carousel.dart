import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../constants/app_color.dart';

class Carousel extends StatefulWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final controller = PageController(initialPage: 0, keepPage: true);
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage <= 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      controller.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  final images = [
    Image.network(
      'https://live.staticflickr.com/4468/37855034372_2a4e8f1c4d_b.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://live.staticflickr.com/4478/24034088888_d86121662a_b.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://s3b.cashify.in/gpro/uploads/2021/04/28123638/M2-Apple-.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://s3b.cashify.in/gpro/uploads/2021/04/28123638/M2-Apple-.jpg',
      fit: BoxFit.cover,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColor.shadesOfBlue2,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            controller: controller,
            itemCount: images.length,
            itemBuilder: (_, index) {
              return images[index % images.length];
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SmoothPageIndicator(
              controller: controller,
              count: images.length,
              effect: CustomizableEffect(
                activeDotDecoration: DotDecoration(
                  width: 32,
                  height: 12,
                  color: AppColor.foregroundColor,
                  rotationAngle: 180,
                  verticalOffset: -10,
                  borderRadius: BorderRadius.circular(24),
                ),
                dotDecoration: const DotDecoration(
                  width: 24,
                  height: 12,
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(2),
                    topRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(2),
                  ),
                  verticalOffset: 0,
                ),
                spacing: 6.0,
                // activeColorOverride: (i) => colors[i],
                inActiveColorOverride: (i) => carouselColors[i],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const carouselColors = [
  AppColor.primaryBlueColor,
  AppColor.primaryYellowColor,
  AppColor.primaryGreenColor,
  AppColor.primaryRedColor,
];
