import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilterMenu extends StatelessWidget {
  const FilterMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SvgPicture.asset(
          'assets/switch.svg',
          color: Colors.grey,
        ),
      ),
    );
  }
}
