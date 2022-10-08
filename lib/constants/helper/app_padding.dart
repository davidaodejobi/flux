import 'package:flutter/material.dart';

extension AppPadding on Widget {
  Widget get paddingRight => Padding(
        padding: const EdgeInsets.only(
          right: 10,
        ),
        child: this,
      );

  Widget get paddingLeft => Padding(
        padding: const EdgeInsets.only(
          left: 10,
        ),
        child: this,
      );

  paddingHrizontal({double padding = 10.0}) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: padding,
        ),
        child: this,
      );
}
