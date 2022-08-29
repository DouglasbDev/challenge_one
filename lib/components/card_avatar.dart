import 'package:flutter/material.dart';

import '../controller/card_avatar_list.dart';
import '../model/card_avatar_model.dart';

class CardAvatarWidget extends StatelessWidget {
  final CardAvatar cardavatar;
  const CardAvatarWidget({Key? key, required this.cardavatar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double widthSize = size.width;
    double heightSize = size.height;
    return Column(
      children: [
        SizedBox(
          height: size.width * 0.210,
          width: size.width * 0.210,
          child: AspectRatio(
            aspectRatio: 3 / 4,
            child: Container(
              height: size.width * 0.210,
              width: size.width * 0.210,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(cardavatar.urlImage),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
