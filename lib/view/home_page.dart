import 'dart:ui';

import 'package:challange_one/components/cicle_avatar_widget.dart';
import 'package:challange_one/components/filter_menu.dart';
import 'package:challange_one/controller/button_list.dart';
import 'package:challange_one/controller/card_home_list.dart';
import 'package:challange_one/model/card_home_model.dart';
import 'package:challange_one/widgets/button_home_widget.dart';
import 'package:challange_one/widgets/button_widget.dart';
import 'package:challange_one/widgets/card_menu_widget.dart';
import 'package:challange_one/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.menu),
                  Column(
                    children: const [
                      Text('Location'),
                      Text(
                        'Cameron St., Boston',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  const CicleAvatarWidget()
                ],
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            const FilterMenu(),
                            const SizedBox(width: 15),
                            SizedBox(
                              height: 73,
                              child: ListView.separated(
                                  padding: const EdgeInsets.all(10),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, _) =>
                                      const SizedBox(
                                        width: 15,
                                      ),
                                  itemCount: items.length,
                                  itemBuilder: (context, index) =>
                                      ButtonHome(items: items[index])),
                            )
                          ],
                        ),
                      ),
                      CardTest()
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
