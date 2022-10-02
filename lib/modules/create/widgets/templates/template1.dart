import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../shared/margin.dart';

class Template1 extends StatelessWidget {
  const Template1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 400,
      height: 400,
      color: const Color(0xFFEAAC01),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const FaIcon(
                FontAwesomeIcons.quoteLeft,
                color: Colors.black,
                size: 80,
              ),
              Column(
                children: const [
                  YMargin(15),
                  FaIcon(
                    FontAwesomeIcons.xmark,
                    color: Colors.black,
                    size: 18,
                  ),
                  YMargin(5),
                  FaIcon(
                    FontAwesomeIcons.ellipsisVertical,
                    color: Colors.black,
                    size: 18,
                  ),
                  YMargin(5),
                  FaIcon(
                    FontAwesomeIcons.xmark,
                    color: Colors.black,
                    size: 18,
                  ),
                ],
              ),
            ],
          ),
          Expanded(
              child: SizedBox(
            child: Center(
              child: Text(
                'Hello World here is the price to pay for the best service',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      height: 1.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          )),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Hello\n',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            height: 0.8,
                            fontWeight: FontWeight.w600,
                          ),
                      children: [
                        TextSpan(
                          text: 'World\n',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    height: 0.8,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        TextSpan(
                          text: '.co',
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    height: 0.8,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  const XMargin(10),
                  const SizedBox(
                    width: 70,
                    child: Divider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                  ),
                  const XMargin(10),
                  Text(
                    '@theDAO',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          height: 0.8,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
              const FaIcon(
                FontAwesomeIcons.quoteRight,
                color: Colors.black,
                size: 80,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
