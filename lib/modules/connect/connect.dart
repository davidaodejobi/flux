import 'package:devffest_ilorin/constants/app_color.dart';
import 'package:devffest_ilorin/shared/glassy_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../shared/margin.dart';

class Connect extends StatelessWidget {
  const Connect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                                          color: Colors.black.withOpacity(0.1),
                                          spreadRadius: 0,
                                          blurRadius: 5,
                                          offset: const Offset(-3, 3),
                                        ),
                                      ]),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                                      FontAwesomeIcons.linkedin,
                                                      // color: AppColor.primaryBlueColor,
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                      FontAwesomeIcons.twitter,
                                                      // color: AppColor.primaryGreenColor,
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                      FontAwesomeIcons.facebook,
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
                                                      FontAwesomeIcons.behance,
                                                      // color: AppColor.primaryRedColor,
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                      FontAwesomeIcons.dribbble,
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
        SizedBox(
          width: 250,
          child: GlassyCard(
            sigmaX: 10.0,
            sigmaY: 10.0,
            height: double.infinity,
            color: Colors.white10.withOpacity(0.1),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: const [0.1, 0.5, 0.7, 0.9],
              colors: [
                AppColor.shadesOfBlue5.withOpacity(0.2),
                AppColor.shadesOfBlue6.withOpacity(0.3),
                AppColor.shadesOfBlue7.withOpacity(0.4),
                AppColor.shadesOfBlue8.withOpacity(0.5),
              ],
            ),
            child: ListView(
              children: [
                Text(
                  'Post 2 Connect',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline5,
                ),
                const YMargin(2),
                Text(
                  'Post lorem yjdb audhih',
                  // 'Connect with other attendees',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const Divider(
                  color: Colors.white,
                ),
                const YMargin(10),
                TextFieldWithHeader(
                  headerText: 'Name',
                  hintText: 'Enter your name',
                  controller: TextEditingController(),
                ),
                const YMargin(15),
                TextFieldWithHeader(
                  headerText: 'About you',
                  hintText: 'Just a little thing about you 🤗',
                  height: 120,
                  maxLine: 3,
                  controller: TextEditingController(),
                ),
                const YMargin(15),
                TextFieldWithHeader(
                  headerText: 'Tech Stack',
                  hintText: 'What do you do?',
                  controller: TextEditingController(),
                ),
                const YMargin(15),
                TextFieldWithHeader(
                  headerText: 'Company',
                  hintText: 'Current company or bootcamp',
                  controller: TextEditingController(),
                ),
                const YMargin(15),
                TextFieldWithHeader(
                  headerText: 'Dribbble',
                  hintText: 'Your Dribbble profile',
                  controller: TextEditingController(),
                ),
                const YMargin(15),
                TextFieldWithHeader(
                  headerText: 'Github',
                  hintText: 'Your Github profile',
                  controller: TextEditingController(),
                ),
                const YMargin(15),
                TextFieldWithHeader(
                  headerText: 'Behance',
                  hintText: 'Your Behance profile',
                  controller: TextEditingController(),
                ),
                const YMargin(15),
                TextFieldWithHeader(
                  headerText: 'LinkedIn',
                  hintText: 'Your LinkedIn profile',
                  controller: TextEditingController(),
                ),
                const YMargin(15),
                TextFieldWithHeader(
                  headerText: 'Twitter',
                  hintText: 'Your Twitter profile',
                  controller: TextEditingController(),
                ),
                const YMargin(15),
                TextFieldWithHeader(
                  headerText: 'Facebook',
                  hintText: 'Your Facebook profile',
                  controller: TextEditingController(),
                ),
                const YMargin(15),
                SizedBox(
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Share'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

//generate different emoji
// import 'package:flutter/material.dart';

class TextFieldWithHeader extends StatelessWidget {
  final String headerText;
  final String hintText;
  final TextEditingController controller;
  final double height;
  final int maxLine;

  const TextFieldWithHeader({
    required this.headerText,
    required this.hintText,
    this.height = 40,
    required this.controller,
    this.maxLine = 1,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        headerText.isNotEmpty
            ? Text(
                headerText,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2,
              )
            : const SizedBox.shrink(),
        const YMargin(4),
        Container(
          height: height,
          padding: const EdgeInsets.only(
            left: 5.0,
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              // try to use the focus from the textfield and
              // activate the boxhadow color only when the textfield is focused
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 0,
                  blurRadius: 0,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ]),
          child: TextField(
            maxLines: maxLine,
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
            ),
          ),
        ),
      ],
    );
  }
}
