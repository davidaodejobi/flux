import 'package:devffest_ilorin/modules/app/view_model/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../shared/margin.dart';

class ButtonWithShadow extends StatefulWidget {
  final String label;
  final Color iconBgcolor;
  final Color bgColor;
  final Widget prefix;
  final Widget suffix;
  final Screens screen;
  const ButtonWithShadow({
    required this.label,
    required this.iconBgcolor,
    required this.bgColor,
    required this.screen,
    this.prefix = const SizedBox.shrink(),
    this.suffix = const SizedBox.shrink(),
    Key? key,
  }) : super(key: key);

  @override
  State<ButtonWithShadow> createState() => _ButtonWithShadowState();

  paddingOnly({required int right}) {
    Padding(
      padding: EdgeInsets.only(right: right.toDouble()),
    );
  }
}

class _ButtonWithShadowState extends State<ButtonWithShadow> {
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
    final ap = Provider.of<AppProvider>(context);
    return Column(
      children: [
        InkWell(
          onTapDown: (TapDownDetails details) {
            ap.switchTab(widget.screen);
            if (!_isPressed) {
              pressed();
            } else {
              unpressed();
            }
          },
          onTap: () {
            ap.switchTab(widget.screen);
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
                widget.prefix,
                Text(
                  widget.label,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                widget.suffix,
              ],
            ),
          ),
        ),
        const YMargin(5)
      ],
    );
  }
}
