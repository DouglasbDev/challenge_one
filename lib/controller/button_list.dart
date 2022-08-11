import 'package:challange_one/model/button_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<ButtonItem> items = [
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
