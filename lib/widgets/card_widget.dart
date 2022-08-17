import 'package:flutter/material.dart';
import '../controller/card_home_list.dart';
import '../view/description_page.dart';

class CardHomeWidget extends StatelessWidget {
  const CardHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.only(bottom: 10),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, _) => const SizedBox(
          height: 22,
        ),
        itemCount: map.length,
        itemBuilder: (context, index) => Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          child: InkWell(
            borderRadius: BorderRadius.circular(14),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DescriptionPage()),
              );
            },
            child: Stack(
              children: [
                Container(
                  height: 157,
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: Row(
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(map[index].image),
                          ),
                        ),
                      ),
                      const SizedBox(width: 11),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                map[index].title,
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Text(
                            map[index].subtitle,
                            style: const TextStyle(fontSize: 12),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            map[index].infotitle,
                            style: const TextStyle(
                                fontSize: 12, color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 17,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.location_on,
                                color: Colors.red,
                              ),
                              Text(
                                '2.6 kms away',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Positioned(
                  right: 20,
                  top: 20,
                  child: Icon(Icons.favorite_border_rounded),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
