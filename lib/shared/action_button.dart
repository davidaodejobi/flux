import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../constants/app_color.dart';
import '../modules/create/view_models/create_provider.dart';
import 'margin.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final Widget icon;
  final VoidCallback onTap;
  const ActionButton({
    required this.text,
    required this.icon,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final createProvider = Provider.of<CreateProvider>(context);
    return Column(
      children: [
        createProvider.isDownloadbutton
            ? Column(
                children: [
                  ExportButtons(
                    iconPath: 'assets/animations/download.json',
                    text: 'Download',
                    onTap: () {
                      createProvider.capturePng();
                      createProvider.toggleDownloadButton();
                    },
                  ).animate().fade(duration: 250.ms).scale(delay: 250.ms),
                  const YMargin(5),
                  ExportButtons(
                    iconPath: 'assets/animations/share.json',
                    text: 'Share',
                    onTap: () {
                      createProvider.toggleDownloadButton();
                    },
                  ).animate().fade(duration: 100.ms).scale(delay: 100.ms),
                  const YMargin(5),
                ],
              )
            : const SizedBox.shrink(),
        InkWell(
          onTap: onTap,
          child: Container(
              height: 35,
              width: 130,
              padding: const EdgeInsets.only(
                left: 5.0,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: AppColor.shadesOfBlue2),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: const Offset(-3, 3),
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const XMargin(8),
                  icon,
                ],
              )),
        ),
      ],
    );
  }
}

class ExportButtons extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final String iconPath;
  const ExportButtons({
    required this.onTap,
    required this.text,
    required this.iconPath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        height: 40,
        width: 130,
        decoration: BoxDecoration(
          color: AppColor.shadesOfBlue8,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.white),
              ),
            ),
            const XMargin(10),
            Lottie.asset(
              iconPath,
              width: 30,
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
