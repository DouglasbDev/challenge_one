import 'package:flutter/material.dart';

import '../controller/button_list.dart';
import '../model/button_class.dart';

class ButtonWidget extends StatelessWidget {
  final ButtonItem button;
  const ButtonWidget({
    super.key,
    required this.button,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double widthSize = size.width;
    double heightSize = size.height;
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(size.width * 0.0453),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(size.width * 0.0453),
        highlightColor: Colors.grey[200],
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size.width * 0.0453),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.0266),
            child: Row(
              children: [
                button.icon,
                SizedBox(
                  width: button.title != null ? size.width * 0.024 : 0,
                ),
                Text(
                  button.title ?? "",
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
