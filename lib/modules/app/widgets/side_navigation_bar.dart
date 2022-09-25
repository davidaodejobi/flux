import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../constants/app_color.dart';
import '../../../shared/margin.dart';
import 'side_nav_bar_button.dart';

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
          Padding(
            padding: const EdgeInsets.only(
              bottom: 40,
            ),
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  width: 170.0,
                  height: 190.0,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      const YMargin(16),
                      Text(
                        'For more info Contact',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      const YMargin(5),
                      InkWell(
                        onTap: () {},
                        child: ClipRRect(
                          child: BackdropFilter(
                            filter:
                                ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                'The Generals',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // const YMargin(5),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: Divider(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
