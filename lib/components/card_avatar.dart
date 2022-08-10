import 'package:challange_one/controller/card_avatar_list.dart';
import 'package:flutter/material.dart';

class CardAvatar extends StatelessWidget {
  const CardAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        separatorBuilder: (context, _) => const SizedBox(
          height: 4,
        ),
        itemCount: avatar.length,
        itemBuilder: (context, index) => Column(
          children: [
            AspectRatio(
              aspectRatio: 5 / 4,
              child: Container(
                width: 120,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 8,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(avatar[index].urlImage),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
