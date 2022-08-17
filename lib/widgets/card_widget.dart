import 'package:flutter/material.dart';
import '../controller/card_home_list.dart';
import '../view/description_page.dart';

class CardHomeWidget extends StatelessWidget {
  const CardHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
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
                SizedBox(
                  height: 116,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          width: 102,
                          height: 99,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(map[index].image),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                map[index].title,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Text(
                            map[index].subtitle,
                            style: const TextStyle(fontSize: 10),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            map[index].infotitle,
                            style: const TextStyle(
                                fontSize: 12, color: Colors.grey),
                          ),
                          const SizedBox(height: 17),
                          Row(
                            children: const [
                              Icon(
                                Icons.location_on,
                                color: Colors.red,
                                size: 15,
                              ),
                              Text(
                                '2.6 kms away',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Positioned(
                  right: 8,
                  top: 14,
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
