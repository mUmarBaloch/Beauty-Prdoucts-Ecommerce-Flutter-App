import 'package:flutter/material.dart';

Container buildPromoCard() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Promo Code',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
        ),
        TextButton(
          onPressed: () {},
          child: Text('Apply'),
          style: ButtonStyle(
            alignment: Alignment.center,
            backgroundColor: MaterialStateProperty.all((Colors.black)),
            foregroundColor: MaterialStateProperty.all((Colors.white)),
          ),
        ),
      ],
    ),
    margin: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 40),
    width: double.infinity,
    height: 80,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(blurRadius: 5, offset: Offset(2, 1), color: Colors.black12)
        ]),
  );
}
