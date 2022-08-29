import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilterMenu extends StatelessWidget {
  const FilterMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double widthSize = size.width;
    double heightSize = size.height;
    return Container(
      height: size.width * 0.12,
      width: size.width * 0.12,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(17)),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.032, vertical: size.height * 0.0179),
        child: SvgPicture.asset(
          'assets/switch.svg',
          color: Colors.grey,
        ),
      ),
    );
  }
}
