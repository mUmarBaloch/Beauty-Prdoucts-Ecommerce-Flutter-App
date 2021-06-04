import 'package:flutter/material.dart';

class BottomInfoWidget extends StatelessWidget {
  const BottomInfoWidget({
    required this.title,
    required this.subTitle,
    required this.price,
  });

  final String? title;
  final String? subTitle;
  final int? price;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 40, right: 40, top: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text(
                '$title',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * .034,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '$subTitle',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
              ),
              trailing: Column(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.black,
                    size: 30,
                  ),
                  Text('55'),
                ],
              ),
            ),
            SizedBox(
              height: 05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$ $price',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'cart',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
