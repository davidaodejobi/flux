import 'package:devffest_ilorin/constants/app_color.dart';
import 'package:devffest_ilorin/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/connect_side_card.dart';
import '../app/widgets/header.dart';

class Connect extends StatelessWidget {
  const Connect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Header(
        child: Expanded(
      child: SizedBox(
          child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
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
                          'Latest First',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        const XMargin(4),
                        const Icon(
                          Icons.arrow_drop_down,
                          // color: Colors.grey,
                        ),
                      ],
                    )),
                const YMargin(20),
                Expanded(
                  child: ListView(
                    children: [
                      for (var i = 0; i < 10; i++)
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 30,
                          ),
                          child: SizedBox(
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                    // height: 150,
                                    // width: 130,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: AppColor.shadesOfBlue2),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.1),
                                            spreadRadius: 0,
                                            blurRadius: 5,
                                            offset: const Offset(-3, 3),
                                          ),
                                        ]),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const CircleAvatar(
                                          radius: 30,
                                          // backgroundColor: ,
                                          // backgroundImage: AssetImage(
                                          //   'assets/images/1.jpg',
                                          // ),
                                        ),
                                        const XMargin(20),
                                        Expanded(
                                          child: SizedBox(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'John Doe',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline5,
                                                ),
                                                const YMargin(5),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        FontAwesomeIcons
                                                            .linkedin,
                                                        // color: AppColor.primaryBlueColor,
                                                      ),
                                                    ),
                                                    IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        FontAwesomeIcons
                                                            .twitter,
                                                        // color: AppColor.primaryGreenColor,
                                                      ),
                                                    ),
                                                    IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        FontAwesomeIcons
                                                            .facebook,
                                                        // color: AppColor.primaryYellowColor,
                                                      ),
                                                    ),
                                                    IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        FontAwesomeIcons.github,
                                                        // color: AppColor.primaryRedColor,
                                                      ),
                                                    ),
                                                    IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        FontAwesomeIcons
                                                            .behance,
                                                        // color: AppColor.primaryRedColor,
                                                      ),
                                                    ),
                                                    IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        FontAwesomeIcons
                                                            .dribbble,
                                                        // color: AppColor.primaryRedColor,
                                                      ),
                                                    ),
                                                    const XMargin(5),
                                                  ],
                                                ),
                                                const YMargin(10),
                                                SizedBox(
                                                  // width
                                                  child: Text(
                                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText2,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    )),
                                Positioned(
                                  top: -15,
                                  right: 30,
                                  child: Container(
                                      height: 30,
                                      width: 200,
                                      padding: const EdgeInsets.only(
                                        left: 5.0,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              color: AppColor.shadesOfBlue2),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              spreadRadius: 0,
                                              blurRadius: 5,
                                              offset: const Offset(-3, 3),
                                            ),
                                          ]),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const FaIcon(
                                            FontAwesomeIcons.diamond,
                                            size: 15,
                                            color: AppColor.primaryYellowColor,
                                          ),
                                          const XMargin(5),
                                          Expanded(
                                            child: Text(
                                              'Latest First at 12:00pm nsfgwie',
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2,
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      // const YMargin(20),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const XMargin(30),
          const ConnectSideCard(),
        ],
      )),
    ));
  }
}
