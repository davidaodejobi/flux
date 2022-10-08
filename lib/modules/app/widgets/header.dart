import 'package:devffest_ilorin/constants/helper/app_padding.dart';
import 'package:devffest_ilorin/shared/shared.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_color.dart';

class Header extends StatelessWidget {
  final double padding;
  final Widget child;
  const Header({
    required this.child,
    this.padding = 30.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFf8f8ff),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: padding,
          right: padding,
          // bottom: 10,
        ),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: kToolbarHeight,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'LoremEpsum',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const Spacer(),
                      const GlassyCard(
                        padding: 5,
                        color: AppColor.shadesOfBlue2,
                        child: Icon(
                          Icons.person,
                          size: 20,
                        ),
                      ),
                      const XMargin(10),
                      Text(
                        'JadeX',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const XMargin(30),
                      const GlassyCard(
                        padding: 5,
                        color: AppColor.shadesOfGreen2,
                        child: Icon(
                          Icons.stream_sharp,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                // const YMargin(10),
                const Divider(
                  color: AppColor.shadesOfBlue2,
                  thickness: 1,
                ),
                const YMargin(10),
              ],
            ).paddingHrizontal(padding: padding == 0 ? 30 : 0),
            child,
          ],
        ),
      ),
    ));
  }
}
