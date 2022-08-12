import 'package:flutter/material.dart';

import '../controller/button_list.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(10),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, _) => const SizedBox(
              width: 15,
            ),
        itemCount: items.length,
        itemBuilder: (context, index) => Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(20),
                highlightColor: Colors.grey[200],
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: items[index].icon,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(items[index].title),
                    ],
                  ),
                ),
              ),
            ));
  }
}
