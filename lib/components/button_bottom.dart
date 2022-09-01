import 'package:flutter/material.dart';

class ButtonBottom extends StatelessWidget {
  const ButtonBottom({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double widthSize = size.width;
    double heightSize = size.height;
    return Container(
      padding: EdgeInsets.only(
        top: size.height * 0.047,
        bottom: size.height * 0.032,
        right: size.width * 0.058,
        left: size.width * 0.165,
      ),
      width: size.width * 0.54,
      height: size.height * 0.118,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 241, 67, 67),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(size.width * 0.133),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.pets,
            color: Colors.white,
            size: size.width * 0.06,
          ),
          SizedBox(width: size.width * 0.053),
          Text(
            'ADOPT',
            style: TextStyle(
                color: Colors.white,
                fontSize: size.width * 0.045,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
