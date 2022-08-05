import 'package:challange_one/components/cicle_avatar_widget.dart';
import 'package:challange_one/components/filter_menu.dart';
import 'package:challange_one/model/button_model.dart';
import 'package:challange_one/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

var listMenu = button;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
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
                      Text('Cameron St., Boston')
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
                      Row(
                        children: [
                          FilterMenu(),
                         
                        ],
                      )
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
