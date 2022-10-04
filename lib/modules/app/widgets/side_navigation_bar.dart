import 'dart:ui';

import 'package:devffest_ilorin/constants/helper/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_color.dart';
import '../../../shared/margin.dart';
import '../view_model/app_provider.dart';
import 'button_with_shadow.dart';

class SideNavigationBar extends StatelessWidget {
  const SideNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: const BoxDecoration(
        color: Color(0xFF162035),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FaIcon(
                  FontAwesomeIcons.heartCircleBolt,
                  color: Colors.white,
                ),
                const XMargin(10),
                Text(
                  'LoremEpsum',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white,
                      ),
                ),
              ],
            ),
          ),
          Consumer<AppProvider>(
            builder: (_, ap, child) {
              return Column(
                children: [
                  ButtonWithShadow(
                    prefix: ap.homeSwitch
                        ? const FaIcon(FontAwesomeIcons.house, size: 15)
                            .paddingRight
                            .animate()
                            .scale(
                                begin: 0.5,
                                duration: 200.ms,
                                curve: Curves.easeOut)
                            .then(delay: 100.ms)
                            .shake(duration: 500.ms)
                        : const FaIcon(FontAwesomeIcons.house, size: 12)
                            .paddingRight,
                    screen: Screens.home,
                    bgColor: Colors.white,
                    iconBgcolor: AppColor.shadesOfBlue2,
                    label: 'Home',
                  ),
                  ButtonWithShadow(
                    prefix: ap.connectSwitch
                        ? const FaIcon(FontAwesomeIcons.shareNodes, size: 15)
                            .paddingRight
                            .animate()
                            .scale(
                                begin: 0.5,
                                duration: 200.ms,
                                curve: Curves.easeOut)
                            .then(delay: 100.ms)
                            .shake(duration: 500.ms)
                        : const FaIcon(FontAwesomeIcons.shareNodes, size: 12)
                            .paddingRight,
                    screen: Screens.connect,
                    bgColor: Colors.white,
                    iconBgcolor: AppColor.shadesOfBlue2,
                    label: 'Connect',
                  ),
                  ButtonWithShadow(
                    prefix: ap.createSwitch
                        ? const FaIcon(FontAwesomeIcons.connectdevelop,
                                size: 15)
                            .paddingRight
                            .animate()
                            .scale(
                                begin: 0.5,
                                duration: 200.ms,
                                curve: Curves.easeOut)
                            .then(delay: 100.ms)
                            .shake(duration: 500.ms)
                        : const FaIcon(FontAwesomeIcons.connectdevelop,
                                size: 12)
                            .paddingRight,
                    screen: Screens.create,
                    bgColor: Colors.white,
                    iconBgcolor: AppColor.shadesOfBlue2,
                    label: 'Create',
                  ),
                  ButtonWithShadow(
                    prefix: ap.chatSwitch
                        ? const FaIcon(FontAwesomeIcons.message, size: 15)
                            .paddingRight
                            .animate()
                            .scale(
                                begin: 0.5,
                                duration: 200.ms,
                                curve: Curves.easeOut)
                            .then(delay: 100.ms)
                            .shake(duration: 500.ms)
                        : const FaIcon(FontAwesomeIcons.message, size: 12)
                            .paddingRight,
                    screen: Screens.chat,
                    bgColor: Colors.white,
                    iconBgcolor: AppColor.shadesOfBlue2,
                    label: 'Chat',
                  ),
                ],
              );
            },
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
                        onTap: () {
                          Screens.map;
                        },
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
