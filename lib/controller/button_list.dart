import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../model/button_class.dart';

List<ButtonItem> items = [
  ButtonItem(
    icon: SvgPicture.asset(
      'assets/switch.svg',
      width: 20,
      height: 20,
      color: Colors.grey,
    ),
  ),
  ButtonItem(
    icon: SvgPicture.asset(
      'assets/cao.svg',
      width: 20,
      height: 20,
      color: Colors.grey,
    ),
    title: 'Dogs',
  ),
  ButtonItem(
    icon: SvgPicture.asset(
      'assets/gato.svg',
      width: 20,
      height: 20,
      color: Colors.grey,
    ),
    title: 'Cats',
  ),
  ButtonItem(
    icon: SvgPicture.asset(
      'assets/papagaio.svg',
      width: 20,
      height: 20,
      color: Colors.grey,
    ),
    title: 'Birds',
  ),
];
