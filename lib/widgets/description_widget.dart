import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/button_bottom.dart';
import '../components/card_avatar.dart';
import '../controller/card_avatar_list.dart';

class DescriptionBodyWidget extends StatelessWidget {
  const DescriptionBodyWidget({super.key});

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
              right: -50,
              top: 100,
              child: Container(
                height: size.width * 0.773,
                width: size.width * 0.693,
                decoration:
                    BoxDecoration(color: Colors.yellow, shape: BoxShape.circle),
              ),
            ),
            Positioned(
              right: -10,
              top: 100,
              child: Container(
                height: size.width * 0.8,
                width: size.width * 0.48,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/dog-projeto-.png'),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      right: size.width * 0.0533, left: size.width * 0.04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sparky',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Colors.grey[800]),
                      ),
                      const FaIcon(
                        FontAwesomeIcons.mars,
                        color: Colors.grey,
                        size: 28,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.0119),
                Padding(
                  padding: EdgeInsets.only(
                      right: size.width * 0.0533, left: size.width * 0.04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Golden Retriever',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[800],
                            fontSize: 15),
                      ),
                      Text(
                        ' 8 moths old',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[800],
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.0119),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.04),
                      child: const Icon(
                        Icons.location_on,
                        color: Colors.red,
                        size: 22,
                      ),
                    ),
                    SizedBox(width: size.width * 0.0186),
                    const Text(
                      '2.6 kms away',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: size.width * 0.72,
                      width: size.width * 0.298,
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
                                Colors.transparent,
                              ],
                                  tileMode: TileMode.mirror,
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)
                              .createShader(bounds);
                        },
                        child: ListView.separated(
                            padding: EdgeInsets.only(top: size.height * 0.064),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            separatorBuilder: (context, _) => SizedBox(
                                  height: size.height * 0.020,
                                ),
                            itemCount: avatar.length,
                            itemBuilder: (context, index) =>
                                CardAvatarWidget(cardavatar: avatar[index])),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.0374),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.0586,
                      ),
                      child: const Text(
                        'About',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                SizedBox(height: size.height * 0.0149),
                Row(
                  children: [
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.only(
                          left: size.width * 0.0586,
                          right: size.width * 0.0586,
                        ),
                        height: size.height * 0.254,
                        child: const Text(
                          'The Golden Retriever, an exuberant Scottish gundog of great beauty, stands among Americas most popular dog breeds. They are serious workers at hunting and field work, as guides for the blind, and in search-and-rescue, enjoy obedience and other competitive events, and have an endearing love of life when not at work.',
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
