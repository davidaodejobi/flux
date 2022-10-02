import 'package:devffest_ilorin/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ModifyButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final FaIcon icon;
  //might add an onHover function later
  const ModifyButton({
    required this.title,
    required this.onPressed,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(
          right: 10,
          bottom: 10,
        ),
        child: Column(
          children: [
            icon,
            const YMargin(5),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
