import 'package:flutter/material.dart';

import '../controller/card_avatar_list.dart';

class CardAvatar extends StatelessWidget {
  const CardAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      separatorBuilder: (context, _) => const SizedBox(
        height: 5,
      ),
      itemCount: avatar.length,
      itemBuilder: (context, index) => Column(
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
                    image: NetworkImage(avatar[index].urlImage),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
