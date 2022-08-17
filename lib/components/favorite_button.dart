import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, top: 10),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
          highlightColor: Colors.grey[400],
          onTap: () {},
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 10,
            width: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
