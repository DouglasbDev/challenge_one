import 'package:flutter/material.dart';

import '../controller/button_list.dart';
import '../model/button_class.dart';

class ButtonWidget extends StatelessWidget {
  final ButtonItem button;
  const ButtonWidget({super.key, required this.button});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double widthSize = size.width;
    double heightSize = size.height;
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(17),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(17),
        highlightColor: Colors.grey[200],
        child: Container(
          width: size.width * 0.22933,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                button.icon,
                SizedBox(
                  width: size.width * 0.024,
                ),
                Text(
                  button.title,
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.w500,
                      fontSize: 13),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
