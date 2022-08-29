import 'package:desafio/components/button_bottom.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/card_avatar.dart';
import '../components/favorite_button.dart';
import '../controller/card_avatar_list.dart';
import '../widgets/description_widget.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double widthSize = size.width;
    double heightSize = size.height;
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 25,
                    )),
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey,
                actions: [
                  FavoriteButton(),
                ],
              ),
              SliverToBoxAdapter(child: DescriptionPageWidget()),
            ],
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: ButtonBottom(),
          )
        ],
      ),
    );
  }
}
