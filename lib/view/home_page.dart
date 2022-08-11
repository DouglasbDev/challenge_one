import 'package:flutter/material.dart';

import '../components/cicle_avatar_widget.dart';
import '../components/filter_menu.dart';
import '../widgets/button_widget.dart';
import '../widgets/card_widget.dart';

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
                          children: const [
                            FilterMenu(),
                            SizedBox(width: 15),
                            SizedBox(
                              height: 73,
                              child: ButtonWidget(),
                            )
                          ],
                        ),
                      ),
                      CardHomeWidget()
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
