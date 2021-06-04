import 'package:flutter/material.dart';

Container buildTopContainer(BuildContext context, String? imageUrl) {
  return Container(
    padding: EdgeInsets.only(top: 30),
    width: double.infinity,
    height: MediaQuery.of(context).size.height * 0.45,
    decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.contain,
          image: NetworkImage(
            'https://cdn140.picsart.com/279120697014211.png',
          )),
    ),
    child: Image.network(
      '$imageUrl',
      height: MediaQuery.of(context).size.height * .2,
    ),
  );
}
