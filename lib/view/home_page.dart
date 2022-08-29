import 'package:desafio/controller/button_list.dart';
import 'package:desafio/widgets/home_widget.dart';
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            expandedHeight: 102,
            backgroundColor: Colors.white,
            title: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  Column(
                    children: const [
                      SizedBox(height: 9),
                      Text(
                        'Location',
                        style: TextStyle(color: Colors.grey, fontSize: 11),
                      ),
                      SizedBox(height: 9),
                      Text(
                        'Cameron St., Boston',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      )
                    ],
                  ),
                  const CircleAvatarWidget()
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(child: HomePageWidget()),
        ],
      ),
    );
  }
}
