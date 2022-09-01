import 'package:flutter/material.dart';

import '../components/filter_menu.dart';
import '../controller/button_list.dart';
import '../controller/card_home_list.dart';
import 'button_widget.dart';
import 'card_widget.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({super.key});

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
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.08, vertical: size.height * 0.0314),
      child: Column(
        children: [
          SingleChildScrollView(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            child: SizedBox(
                height: size.width * 0.122,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, _) => SizedBox(
                    width: size.width * 0.0533,
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) => ButtonWidget(
                    button: items[index],
                  ),
                )),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: ListView.separated(
                padding: EdgeInsets.only(top: size.height * 0.0404),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                separatorBuilder: (context, _) => SizedBox(
                      height: size.height * 0.0329,
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
