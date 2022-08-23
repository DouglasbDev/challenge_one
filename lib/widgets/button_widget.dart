import 'package:flutter/material.dart';

import '../controller/button_list.dart';
import '../model/button_class.dart';

class ButtonWidget extends StatelessWidget {
  final ButtonItem button;
  const ButtonWidget({super.key, required this.button});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(17),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(17),
        highlightColor: Colors.grey[200],
        child: Container(
          width: 86,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                button.icon,
                const SizedBox(
                  width: 9,
                ),
                Text(
                  button.title,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
