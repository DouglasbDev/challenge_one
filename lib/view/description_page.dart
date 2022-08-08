import 'package:challange_one/components/favorite_button.dart';
import 'package:flutter/material.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 0,
        actions: [
          FavoriteButton(),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Spyke'),
                Padding(
                  padding: EdgeInsets.only(right: 18),
                  child: Icon(Icons.emoji_symbols),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Golden Retriver'),
                Text(' 8 moths old'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: const [
                Icon(
                  Icons.location_on,
                  color: Colors.red,
                ),
                Text('2.6 kms away')
              ],
            ),
          )
        ],
      ),
    );
  }
}
