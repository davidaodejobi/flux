// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:convert';
import 'dart:html';

import 'package:devffest_ilorin/constants/app_color.dart';
import 'package:flutter/foundation.dart';
import 'package:screenshot/screenshot.dart';

import '../../../core/models/template_model.dart';

enum TemplateType { template1, template2, template3, template4, template5 }

class CreateProvider with ChangeNotifier {
  int selectedTemplateIndex = 0;

  switchTemplate(int index) {
    selectedTemplateIndex = index;
    notifyListeners();
  }

  List<TemplateModel> templates = [
    TemplateModel(
        title: 'Cortana',
        color: AppColor.primaryYellowColor,
        onPressed: () {},
        hasImage: false),
    TemplateModel(
        title: 'Wakanda',
        color: AppColor.primaryBlueColor,
        onPressed: () {},
        hasImage: true),
    TemplateModel(
        title: 'Thor',
        color: AppColor.primaryGreenColor,
        onPressed: () {},
        hasImage: false),
    TemplateModel(
        title: 'Flash',
        color: AppColor.primaryRedColor,
        onPressed: () {},
        hasImage: true),
    TemplateModel(
        title: 'Obidient',
        color: AppColor.backgroundColor,
        onPressed: () {},
        hasImage: false),
  ];

  get isDownloadbutton => _isDownloadButton;

  late Uint8List imageFile;
  ScreenshotController screenshotController = ScreenshotController();
  bool _isDownloadButton = false;

  void toggleDownloadButton() {
    _isDownloadButton = !_isDownloadButton;
    notifyListeners();
  }

  capturePng() async {
    screenshotController
        .capture(delay: const Duration(milliseconds: 10))
        .then((Uint8List? value) {
      final base64 = base64Encode(value!);
      final anchor =
          AnchorElement(href: 'data:application/octet-stream;base64,$base64')
            ..download = "image.png"
            ..target = 'blank';
      document.body!.append(anchor);
      anchor.click();
      anchor.remove();
    }).then((value) {
      //TODO: Show a completion message with some animation
    }).catchError((onError) {
      //TODO: Show an error message with some animation
    });
    /* Here is the explanation for the code above:
    1. We are using dart:html library to create an HTML anchor element
    2. We are creating a base64 string from the image
    3. We are setting the anchor href to the base64 string
    4. We are setting the anchor download attribute to the name of the file
    5. We are setting the anchor target to blank, so that the file will be downloaded
    6. We are appending the anchor to the document body
    7. We are clicking on the anchor to download the file
    8. We are removing the anchor from the document body */
    //? or the code below (both works) --> need to study flutter internals
    // createProvider.screenshotController
    //     .capture(delay: const Duration(milliseconds: 10))
    //     .then((Uint8List? image) async {
    //   final blob = Blob([image!]);
    //   final url = Url.createObjectUrlFromBlob(blob);
    //   final anchor = AnchorElement(href: url)
    //     ..download = 'image.png'
    //     ..click();
    // }).catchError((onError) {
    //   print(onError);
    // });
    notifyListeners();
  }
}
