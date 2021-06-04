import 'package:flutter/material.dart';

class Pricing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildRow('Sub Title', 256),
        SizedBox(
          height: 20,
        ),
        buildRow('Shipping', 20),
        SizedBox(
          height: 20,
        ),
        buildRow('Total', 274)
      ],
    );
  }

  Container buildRow(String? title, int? price) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          Text(
            '\$$price',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
