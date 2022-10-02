import 'package:flutter/foundation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FunctionalityModel {
  final String title;
  final VoidCallback onPressed;
  final FaIcon icon;

  const FunctionalityModel({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.icon,
  });
}

List<FunctionalityModel> functionalities1 = [
  FunctionalityModel(
    title: 'edit',
    onPressed: () {},
    icon: const FaIcon(
      FontAwesomeIcons.penToSquare,
    ),
  ),
  FunctionalityModel(
    title: 'font',
    onPressed: () {},
    icon: const FaIcon(
      FontAwesomeIcons.font,
    ),
  ),
  FunctionalityModel(
    title: 'color',
    onPressed: () {},
    icon: const FaIcon(
      FontAwesomeIcons.paintRoller,
    ),
  ),
  FunctionalityModel(
    title: 'shapes',
    onPressed: () {},
    icon: const FaIcon(
      FontAwesomeIcons.shapes,
    ),
  ),
];

List<FunctionalityModel> functionalities2 = [
  FunctionalityModel(
    title: 'padding',
    onPressed: () {},
    icon: const FaIcon(
      FontAwesomeIcons.square,
    ),
  ),
  FunctionalityModel(
    title: 'image',
    onPressed: () {},
    icon: const FaIcon(
      FontAwesomeIcons.image,
    ),
  ),
  FunctionalityModel(
    title: 'alignments',
    onPressed: () {},
    icon: const FaIcon(
      FontAwesomeIcons.alignJustify,
    ),
  ),
  FunctionalityModel(
    title: 'font-size',
    onPressed: () {},
    icon: const FaIcon(
      FontAwesomeIcons.textHeight,
    ),
  ),
];
