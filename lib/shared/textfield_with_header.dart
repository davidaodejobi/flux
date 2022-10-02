import 'package:devffest_ilorin/shared/shared.dart';
import 'package:flutter/material.dart';

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
