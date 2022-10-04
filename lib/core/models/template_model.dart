import 'package:flutter/material.dart';

class TemplateModel {
  final String title;
  final Color color;
  final bool hasImage;
  final VoidCallback onPressed;

  const TemplateModel({
    required this.title,
    required this.color,
    required this.hasImage,
    required this.onPressed,
  });
}
