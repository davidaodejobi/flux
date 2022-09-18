import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/app_color.dart';
import '../../../shared/margin.dart';

class SideNavBarButton extends StatefulWidget {
  final String label;
  // final String icon;
  final Color iconBgcolor;
  final Color bgColor;
  const SideNavBarButton({
    required this.label,
    // required this.icon,
    required this.iconBgcolor,
    required this.bgColor,
    Key? key,
  }) : super(key: key);

  @override
  State<SideNavBarButton> createState() => _SideNavBarButtonState();
}

class _SideNavBarButtonState extends State<SideNavBarButton> {
  bool _isPressed = false;

  pressed() {
    setState(() {
      _isPressed = true;
    });
    return _isPressed;
  }

  unpressed() {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTapDown: (TapDownDetails details) {
            if (!_isPressed) {
              pressed();
            } else {
              unpressed();
            }
          },
          onTap: () {
            pressed();
            if (_isPressed) {
              Future.delayed(const Duration(milliseconds: 100), () {
                unpressed();
              });
            }
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            curve: Curves.linear,
            height: 35,
            width: double.infinity,
            padding: const EdgeInsets.only(left: 16),
            margin: !_isPressed
                ? const EdgeInsets.only(
                    top: 0,
                    bottom: 5,
                    left: 10,
                    right: 10,
                  )
                : const EdgeInsets.only(
                    top: 5,
                    left: 10,
                    right: 10,
                  ),
            decoration: BoxDecoration(
              color: widget.bgColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
              boxShadow: [
                BoxShadow(
                  color: _isPressed
                      ? Colors.transparent
                      : const Color.fromARGB(255, 62, 62, 62),
                  spreadRadius: 0,
                  blurRadius: 0,
                  offset: _isPressed
                      ? const Offset(0, 0)
                      : const Offset(0, 5), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/svgs/chat.svg',
                  color: AppColor.primaryBlueColor,
                  fit: BoxFit.scaleDown,
                ),
                const XMargin(10),
                Text(
                  widget.label,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          ),
        ),
        const YMargin(5)
      ],
    );
  }
}
