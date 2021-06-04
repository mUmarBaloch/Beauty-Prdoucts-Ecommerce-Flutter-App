import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final imageUrl;
  final String? title;
  ProductTile({
    @required this.imageUrl,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.network(
                imageUrl,
                height: 50,
              ),
              radius: 35,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$title',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    letterSpacing: .4,
                    fontSize: 20,
                  ),
                ),
                Text('Size : 255l'),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              icon: Text(
                'x',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              onPressed: () {},
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.remove_circle_outline),
                  onPressed: () {},
                ),
                Text('02'),
                IconButton(
                  icon: Icon(Icons.add_circle),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
