import 'package:flutter/material.dart';

import '../components/filter_menu.dart';
import '../controller/button_list.dart';
import '../controller/card_home_list.dart';
import 'button_widget.dart';
import 'card_widget.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double widthSize = size.width;
    double heightSize = size.height;
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      padding:
          EdgeInsets.symmetric(horizontal: size.width * 0.08, vertical: 21),
      child: Column(
        children: [
          SingleChildScrollView(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const FilterMenu(),
                const SizedBox(width: 17),
                SizedBox(
                    height: 46,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, _) => const SizedBox(
                        width: 20,
                      ),
                      itemCount: items.length,
                      itemBuilder: (context, index) =>
                          ButtonWidget(button: items[index]),
                    ))
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: ListView.separated(
                padding: const EdgeInsets.only(top: 27),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                separatorBuilder: (context, _) => const SizedBox(
                      height: 22,
                    ),
                itemCount: map.length,
                itemBuilder: (context, index) =>
                    CardHomeWidget(card: map[index])),
          ),
        ],
      ),
    );
  }
}
