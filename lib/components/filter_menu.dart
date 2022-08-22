import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilterMenu extends StatelessWidget {
  const FilterMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(17)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: SvgPicture.asset(
          'assets/switch.svg',
          color: Colors.grey,
        ),
      ),
    );
  }
}
