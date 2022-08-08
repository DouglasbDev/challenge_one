import 'package:challange_one/controller/button_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../model/button_class.dart';

Widget ButtonHome({required ButtonItem items}) => Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(20),
        highlightColor: Colors.red,
        child: Container(
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: items.icon,
              ),
              SizedBox(
                width: 10,
              ),
              Text(items.title),
            ],
          ),
        ),
      ),
    );
