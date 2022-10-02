import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
                  Container(
                    height: 50,
                    width: 130,
                    decoration: BoxDecoration(
                      color: AppColor.shadesOfBlue2,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ).animate().slide(
                        duration: 500.ms,
                        begin: const Offset(0, 100),
                        end: const Offset(0, 0),
                      ),
                  const YMargin(5),
                  Container(
                    height: 50,
                    width: 130,
                    decoration: BoxDecoration(
                      color: AppColor.shadesOfBlue2,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  )
                      .animate()
                      .fade(
                        duration: 500.ms,
                      )
                      .scale(
                        duration: 500.ms,
                      ),
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
