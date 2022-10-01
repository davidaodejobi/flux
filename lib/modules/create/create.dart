import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/app_color.dart';
import '../../shared/glassy_card.dart';
import '../../shared/margin.dart';
import '../connect/connect.dart';

class Create extends StatelessWidget {
  const Create({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Container(
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
                            style:
                                Theme.of(context).textTheme.headline3!.copyWith(
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
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        height: 0.8,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  children: [
                                    TextSpan(
                                      text: 'World\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                            height: 0.8,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    TextSpan(
                                      text: '.co',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
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
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
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
                ),
              ),
              const YMargin(10),
              GlassyCard(
                color: AppColor.shadesOfBlue2,
                child: SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: Row(
                    children: [
                      const Expanded(
                        child: SizedBox(
                          height: double.infinity,
                          width: 300,
                          child: GlassyCard(
                              color: Colors.white,
                              child: SizedBox(
                                  // child: Placeholder(),/
                                  )),
                        ),
                      ),
                      const XMargin(10),
                      Expanded(
                        child: TextFieldWithHeader(
                          headerText: '',
                          hintText: 'Enter text here',
                          maxLine: 4,
                          height: 140,
                          controller: TextEditingController(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const XMargin(30),
        SizedBox(
          width: 250,
          child: Column(
            children: [
              Expanded(
                child: GlassyCard(
                    color: AppColor.shadesOfBlue2,
                    child: SizedBox(
                      child: Column(
                        children: [
                          const XMargin(10),
                          const Text(
                            'Templates',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const YMargin(10),
                          Expanded(
                            child: ListView(
                              children: const [
                                TemplateCard(
                                  title: 'Template 1',
                                  description: 'This is a template',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TemplateCard extends StatelessWidget {
  final String title;
  final String description;
  const TemplateCard({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GlassyCard(
              color: Colors.white,
              child: SizedBox(
                height: 100,
                width: double.infinity,
                child: Text('Template $index'),
              ));
        });
    // return GlassyCard(
    //   color: AppColor.shadesOfBlue2,
    //   child: SizedBox(
    //     height: 100,
    //     child: Row(
    //       children: [
    //         Expanded(
    //           child: Padding(
    //             padding: const EdgeInsets.all(8.0),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Text(
    //                   title,
    //                   style: const TextStyle(
    //                     fontSize: 20,
    //                     fontWeight: FontWeight.bold,
    //                   ),
    //                 ),
    //                 const YMargin(10),
    //                 Text(
    //                   description,
    //                   style: const TextStyle(
    //                     fontSize: 15,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //         const XMargin(10),
    //         const SizedBox(
    //           height: 100,
    //           width: 100,
    //           child: GlassyCard(
    //             color: Colors.white,
    //             child: Placeholder(),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
