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
            expandedHeight: size.height * 0.1529,
            backgroundColor: Colors.white,
            title: Padding(
              padding: EdgeInsets.only(top: size.height * 0.0149),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.grey[700],
                  ),
                  Column(
                    children: [
                      SizedBox(height: size.height * 0.0134),
                      const Text(
                        'Location',
                        style: TextStyle(color: Colors.grey, fontSize: 11),
                      ),
                      SizedBox(height: size.height * 0.0134),
                      Text(
                        'Cameron St., Boston',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      )
                    ],
                  ),
                  const CircleAvatarWidget()
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(child: HomeBodyWidget()),
        ],
      ),
    );
  }
}
