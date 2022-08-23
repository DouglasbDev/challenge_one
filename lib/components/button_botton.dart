import 'package:flutter/material.dart';

class ButtonBotton extends StatelessWidget {
  const ButtonBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 207),
      child: Container(
        padding:
            const EdgeInsets.only(top: 32, bottom: 22, right: 22, left: 62),
        height: 79,
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
    );
  }
}
