import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double widthSize = size.width;
    double heightSize = size.height;
    return Padding(
      padding: EdgeInsets.only(
          right: size.width * 0.0266, top: size.height * 0.0149),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          highlightColor: Colors.grey[300],
          onTap: () {},
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: size.width * 0.125,
            width: size.width * 0.125,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: const Icon(
              Icons.favorite,
              color: Colors.red,
              size: 28,
            ),
          ),
        ),
      ),
    );
  }
}
