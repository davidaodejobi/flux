import 'dart:html';
import 'dart:typed_data';

import 'package:devffest_ilorin/constants/app_color.dart';
import 'package:devffest_ilorin/shared/margin.dart';
import 'package:flutter/material.dart';

class Template2 extends StatefulWidget {
  const Template2({Key? key}) : super(key: key);

  @override
  State<Template2> createState() => _Template2State();
}

class _Template2State extends State<Template2> {
  late Uint8List uploadedImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      color: AppColor.shadesOfBlue3,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -4,
            left: -4,
            child: Container(
              padding: const EdgeInsets.all(16),
              height: 400,
              width: 400,
              color: const Color(0xFF0024FF),
              child: Row(
                children: [
                  Column(
                    children: [
                      const YMargin(20),
                      Container(
                        height: 150,
                        width: 150,
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF0024FF),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        child: InkWell(
                          onTap: () {
                            _startFilePicker() async {
                              FileUploadInputElement uploadInput =
                                  FileUploadInputElement();
                              uploadInput.click();

                              uploadInput.onChange.listen((e) {
                                // read file content as dataURL
                                final files = uploadInput.files;
                                if (files!.length == 1) {
                                  final file = files[0];
                                  FileReader reader = FileReader();

                                  reader.onLoadEnd.listen((e) {
                                    setState(() {
                                      uploadedImage =
                                          reader.result as Uint8List;
                                    });
                                  });

                                  reader.onError.listen((fileEvent) {
                                    setState(() {
                                      String option1Text =
                                          "Some Error occured while reading the file";
                                    });
                                  });

                                  reader.readAsArrayBuffer(file);
                                }
                              });
                            }

                            // print('image');
                            // () async {
                            //   var picked = await FilePicker.platform
                            //       .pickFiles(type: FileType.image);

                            //   if (picked != null) {
                            //     print(picked.files.first.name);
                            //   }
                            // };
                          },
                          child: Container(
                            height: 220,
                            width: 220,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const XMargin(40),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWithDivider(
                        text1: 'David',
                        text2: 'Odejobi',
                        textStyle1:
                            Theme.of(context).textTheme.headline6!.copyWith(
                                  color: Colors.white,
                                  height: 1.0,
                                ),
                        textStyle2:
                            Theme.of(context).textTheme.headline6!.copyWith(
                                  color: Colors.white,
                                  height: 1.0,
                                ),
                      ),
                      const YMargin(20),
                      Text(
                        'will be attending',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Lorem\n',
                          style:
                              Theme.of(context).textTheme.headline3!.copyWith(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                    height: 1.0,
                                  ),
                          children: [
                            TextSpan(
                              text: 'Texas\n',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                    height: 1.0,
                                  ),
                            ),
                            TextSpan(
                              text: '2022',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                    height: 1.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const YMargin(20),
                      TextWithDivider(
                        text1: 'Saturday',
                        text2: '10th June 2022',
                        textStyle1:
                            Theme.of(context).textTheme.bodyText1!.copyWith(
                                  color: Colors.white,
                                  height: 1.0,
                                ),
                        textStyle2:
                            Theme.of(context).textTheme.bodyText1!.copyWith(
                                  color: Colors.white,
                                  height: 1.0,
                                ),
                      ),
                      const YMargin(10),
                      TextWithDivider(
                        text1: 'University of Texas',
                        text2: 'Austin, Texas',
                        textStyle1:
                            Theme.of(context).textTheme.bodyText1!.copyWith(
                                  color: Colors.white,
                                  height: 1.0,
                                ),
                        textStyle2:
                            Theme.of(context).textTheme.bodyText1!.copyWith(
                                  color: Colors.white,
                                  height: 1.0,
                                ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            left: 10,
            child: Transform(
              transform: Matrix4.identity()..rotateZ(-0.05),
              child: Container(
                height: 50,
                width: 200,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    '#TechConference\'2022',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            left: 100,
            top: 10,
            child: DecorationCircles(
              color: AppColor.primaryYellowColor,
              size: 15,
            ),
          ),
          const Positioned(
            left: 60,
            top: 300,
            child: DecorationCircles(
              color: AppColor.primaryGreenColor,
              size: 20,
            ),
          ),
          const Positioned(
            right: 50,
            bottom: 200,
            child: DecorationCircles(
              color: AppColor.primaryRedColor,
              size: 10,
            ),
          ),
          const Positioned(
            right: 80,
            bottom: 30,
            child: DecorationCircles(
              color: AppColor.primaryYellowColor,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}

class DecorationCircles extends StatelessWidget {
  final double size;
  final Color color;
  const DecorationCircles({
    required this.size,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: Container(
        height: size,
        width: size,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 5),
              spreadRadius: 5,
            ),
          ],
        ),
      ),
    );
  }
}

class TextWithDivider extends StatelessWidget {
  final String text1;
  final String text2;
  final TextStyle textStyle1;
  final TextStyle textStyle2;

  const TextWithDivider({
    required this.text1,
    required this.text2,
    required this.textStyle1,
    required this.textStyle2,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          const VerticalDivider(
            color: Colors.white,
            thickness: 2,
            width: 2,
            endIndent: 2,
          ),
          const XMargin(5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text1, style: textStyle1),
              Text(
                text2,
                style: textStyle2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
