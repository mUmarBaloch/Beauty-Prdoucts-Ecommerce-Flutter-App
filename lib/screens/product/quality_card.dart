import 'package:flutter/material.dart';

Container buildQualityCard(IconData icon, String title, BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(blurRadius: 2, offset: Offset(2, 1), color: Colors.white12)
      ],
    ),
    width: MediaQuery.of(context).size.width * .15,
    height: MediaQuery.of(context).size.height * .1,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 30,
        ),
        Text('$title')
      ],
    ),
  );
}
