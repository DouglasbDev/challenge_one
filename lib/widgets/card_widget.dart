import 'package:flutter/material.dart';
import '../controller/card_home_list.dart';
import '../model/card_home_model.dart';
import '../view/description_page.dart';

class CardHomeWidget extends StatelessWidget {
  final CardHome card;
  const CardHomeWidget({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double widthSize = size.width;
    double heightSize = size.height;
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(17),
      child: InkWell(
        borderRadius: BorderRadius.circular(17),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DescriptionPage()),
          );
        },
        child: Stack(
          children: [
            SizedBox(
              height: size.width * 0.314,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.0213),
                    child: Container(
                      width: size.width * 0.272,
                      height: size.height * 0.1499,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(card.image),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: size.width * 0.032),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: size.width * 0.32,
                            child: Text(
                              card.title,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[900]),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.00599,
                      ),
                      SizedBox(
                        width: size.width * 0.32,
                        child: Text(
                          card.subtitle,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[800]),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.00599,
                      ),
                      SizedBox(
                        width: size.width * 0.32,
                        child: Text(
                          card.infotitle,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(height: size.height * 0.0254),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Colors.red,
                            size: 15,
                          ),
                          SizedBox(height: size.height * 0.0254),
                          SizedBox(
                            width: size.width * 0.32,
                            child: const Text(
                              '2.6 kms away',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              right: 18,
              top: 17,
              child: Icon(
                card.favorite ? Icons.favorite : Icons.favorite_border_rounded,
                size: 22,
                color: card.favorite ? Colors.red : Colors.grey[400],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
