import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double widthSize = size.width;
    double heightSize = size.height;
    return Container(
      height: size.width * 0.114,
      width: size.width * 0.114,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size.width * 0.0533),
        ),
        color: Colors.red,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size.width * 0.0533),
        child: Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-i8YqO-8AOiNEIRZEW22gQbRswOIjIDyhpQ&usqp=CAU",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
