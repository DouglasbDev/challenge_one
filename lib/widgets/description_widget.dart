import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/button_bottom.dart';
import '../components/card_avatar.dart';
import '../controller/card_avatar_list.dart';

class DescriptionPageWidget extends StatelessWidget {
  const DescriptionPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double widthSize = size.width;
    double heightSize = size.height;
    return SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 60),
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
              ),
            ),
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
                  children: [
                    SizedBox(
                      height: 250,
                      width: 112,
                      child: ShaderMask(
                        blendMode: BlendMode.dstIn,
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                                  stops: [
                                0.8,
                                1
                              ],
                                  colors: <Color>[
                                Colors.white,
                                // Colors.white,
                                // Colors.white,
                                // Colors.white,
                                // Colors.white,
                                Colors.transparent,
                              ],
                                  tileMode: TileMode.mirror,
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)
                              .createShader(bounds);
                        },
                        child: ListView.separated(
                            padding: const EdgeInsets.only(top: 43),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            separatorBuilder: (context, _) => const SizedBox(
                                  height: 5,
                                ),
                            itemCount: avatar.length,
                            itemBuilder: (context, index) =>
                                CardAvatarWidget(cardavatar: avatar[index])),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 22,
                      ),
                      child: Text(
                        'About',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.only(
                          left: 22,
                          right: 22,
                        ),
                        height: 170,
                        child: const Text(
                          'The Golden Retriever, an exuberant Scottish gundog of great beauty, stands among Americas most popular dog breeds. They are serious workers at hunting and field work, as guides for the blind, and in search-and-rescue, enjoy obedience and other competitive events, and have an endearing love of life when not at work. The Golden Retriever is a sturdy, muscular dog of medium size, famous for the dense, lustrous coat of gold that gives the breed its name. The broad head, with its friendly and intelligent eyes, short ears, and straight muzzle, is a breed hallmark.',
                          overflow: TextOverflow.fade,
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                    )
                  ],
                ),
                // SizedBox(
                //   height: 27,
                // ),
                // const Align(
                //   alignment: Alignment.bottomRight,
                //   child: ButtonBottom(),
                // ),
              ],
            ),
          ],
        ));
  }
}
