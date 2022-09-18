import 'dart:ui';

import 'package:devffest_ilorin/constants/app_color.dart';
import 'package:devffest_ilorin/shared/margin.dart';
import 'package:flutter/material.dart';

import 'widgets/side_nav_bar_button.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
          right: 10,
        ),
        child: Row(
          children: [
            const SideNavigationBar(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SideNavigationBar extends StatelessWidget {
  const SideNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: const BoxDecoration(
        color: AppColor.primaryBlueColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 40,
            ),
            child: Text(
              'LoremEpsum',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Column(
            children: const [
              SideNavBarButton(
                bgColor: Colors.white,
                iconBgcolor: AppColor.shadesOfBlue2,
                label: 'Home',
              ),
              SideNavBarButton(
                bgColor: Colors.white,
                iconBgcolor: AppColor.shadesOfBlue2,
                label: 'Connect',
              ),
              SideNavBarButton(
                bgColor: Colors.white,
                iconBgcolor: AppColor.shadesOfBlue2,
                label: 'Create',
              ),
              SideNavBarButton(
                bgColor: Colors.white,
                iconBgcolor: AppColor.shadesOfBlue2,
                label: 'Chat',
              ),
            ],
          ),
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                width: 180.0,
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    const YMargin(16),
                    Text(
                      'For more info Contact us',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Lorem Epsum',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
