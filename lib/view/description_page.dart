import 'package:challange_one/components/card_avatar.dart';
import 'package:challange_one/components/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Spyke'),
                    Padding(
                      padding: EdgeInsets.only(right: 18),
                      child: FaIcon(
                        FontAwesomeIcons.mars,
                        color: Colors.grey,
                      ),
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
              ),
              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://img.freepik.com/fotos-gratis/cachorro-golden-retriever-fofo-com-um-chapeu-marrom-isolado-em-amarelo_181624-51691.jpg?w=826&t=st=1659989318~exp=1659989918~hmac=44c884acca99974fcae2651151476b28d97e58d20b4c475f08420a0718cf9fef'),
                  ),
                ),
                    height: 300,
                    child: CardAvatar(),
                  ),
                ],
              )
            ],
          ),
          // Positioned(
          //     left: 120,
          //     top: 150,
          //     child: Container(
          //       height: 300,
          //       width: 200,
          //       decoration: const BoxDecoration(
          //         color: Colors.black,
          //         image: DecorationImage(
          //           fit: BoxFit.cover,
          //           image: NetworkImage(
          //               'https://img.freepik.com/fotos-gratis/cachorro-golden-retriever-fofo-com-um-chapeu-marrom-isolado-em-amarelo_181624-51691.jpg?w=826&t=st=1659989318~exp=1659989918~hmac=44c884acca99974fcae2651151476b28d97e58d20b4c475f08420a0718cf9fef'),
          //         ),
          //       ),
          //     )),
        ],
      ),
    );
  }
}
