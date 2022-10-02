import 'package:devffest_ilorin/shared/shared.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_color.dart';

class Header extends StatelessWidget {
  final Widget child;
  const Header({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            bottom: 10,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 100,
                ),
                child: Container(
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
                        color: AppColor.shadesOfBlue2,
                        child: Icon(
                          Icons.person,
                        ),
                      ),
                      const XMargin(10),
                      Text(
                        'JadeX',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const XMargin(30),
                      const GlassyCard(
                        color: AppColor.shadesOfGreen2,
                        child: Icon(
                          Icons.stream_sharp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // const YMargin(10),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                  // vertical: 10,/??
                ),
                child: Divider(
                  color: AppColor.shadesOfBlue2,
                  thickness: 1,
                ),
              ),
              const YMargin(10),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
