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
          height: 15,
        ),
        itemCount: map.length,
        itemBuilder: (context, index) => Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DescriptionPage()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 15, top: 5),
              child: Row(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 15),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 8,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(map[index].image),
                            ),
                          ),
                        ),
                      ),
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
                              const SizedBox(width: 90),
                            ],
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            map[index].subtitle,
                            style: const TextStyle(fontSize: 12),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            map[index].infotitle,
                            style: const TextStyle(fontSize: 12),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.location_on,
                                color: Colors.red,
                              ),
                              Text('2.6 kms away')
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
