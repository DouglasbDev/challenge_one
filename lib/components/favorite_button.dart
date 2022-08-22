import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, top: 10),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          highlightColor: Colors.grey[300],
          onTap: () {},
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 47,
            width: 47,
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
