import 'package:flutter/material.dart';

import '../controller/card_avatar_list.dart';
import '../model/card_avatar_model.dart';

class CardAvatarWidget extends StatelessWidget {
  final CardAvatar cardavatar;
  const CardAvatarWidget({Key? key, required this.cardavatar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 79,
          width: 79,
          child: AspectRatio(
            aspectRatio: 3 / 4,
            child: Container(
              height: 79,
              width: 79,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 1,
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
