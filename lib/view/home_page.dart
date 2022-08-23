import 'package:desafio/controller/button_list.dart';
import 'package:flutter/material.dart';

import '../components/circle_avatar_widget.dart';
import '../components/filter_menu.dart';
import '../controller/card_home_list.dart';
import '../widgets/button_widget.dart';
import '../widgets/card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double widthSize = size.width;
    double heightSize = size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.menu),
                  Column(
                    children: const [
                      Text(
                        'Location',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 9),
                      Text(
                        'Cameron St., Boston',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  const CircleAvatarWidget()
                ],
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 21),
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            FilterMenu(),
                            SizedBox(width: 17),
                            SizedBox(
                                height: 46,
                                child: ListView.separated(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, _) =>
                                      const SizedBox(
                                    width: 20,
                                  ),
                                  itemCount: items.length,
                                  itemBuilder: (context, index) =>
                                      ButtonWidget(button: items[index]),
                                ))
                          ],
                        ),
                      ),
                      Expanded(
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
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
