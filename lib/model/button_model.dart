import 'package:flutter/material.dart';

import '../widgets/button_widget.dart';

List<ButtonWidget> button = [
  ButtonWidget.icon(
    child: Text('Dogs'),
    icon: const Icon(Icons.pets),
  ),
  ButtonWidget.icon(
    child: Text('Cats'),
    icon: const Icon(Icons.pets),
  ),
  
];
