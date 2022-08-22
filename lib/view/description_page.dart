import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/card_avatar.dart';
import '../components/favorite_button.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.grey,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 0,
        actions: const [
          FavoriteButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
                right: 20,
                top: 100,
                child: Container(
                  height: 300,
                  width: 180,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://img.freepik.com/fotos-gratis/retriever-dourado-bonito_144627-26658.jpg?w=740&t=st=1660158825~exp=1660159425~hmac=d02ffe13579e6f7bd6d52e751aa11ccd0676407aa8939dd677758b69b924eab8'),
                    ),
                  ),
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Sparky',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 35),
                      ),
                      FaIcon(
                        FontAwesomeIcons.mars,
                        color: Colors.grey,
                        size: 28,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 13),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Golden Retriever',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                            fontSize: 15),
                      ),
                      Text(
                        ' 8 moths old',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.location_on,
                        color: Colors.red,
                        size: 22,
                      ),
                    ),
                    SizedBox(width: 7),
                    Text(
                      '2.6 kms away',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    )
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 250,
                      width: 112,
                      child: CardAvatar(),
                    )
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 22,
                      ),
                      child: Text(
                        'About',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.only(left: 22, right: 22),
                        height: 175,
                        child: const Text(
                          'The Golden Retriever, an exuberant Scottish gundog of great beauty, stands among Americas most popular dog breeds. They are serious workers at hunting and field work, as guides for the blind, and in search-and-rescue, enjoy obedience and other competitive events, and have an endearing love of life when not at work. The Golden Retriever is a sturdy, muscular dog of medium size, famous for the dense, lustrous coat of gold that gives the breed its name. The broad head, with its friendly and intelligent eyes, short ears, and straight muzzle, is a breed hallmark.',
                          overflow: TextOverflow.clip,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 29,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 32, bottom: 22, right: 22, left: 62),
                    height: 79,
                    width: 207,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 241, 67, 67),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                      ),
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.pets,
                          color: Colors.white,
                          size: 24,
                        ),
                        SizedBox(width: 20),
                        Text(
                          'ADOPT',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
