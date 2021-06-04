import 'package:beauty_shop_ui/screens/product/product_screen.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final String? subTitle;
  final int? price;
  final goTo;

  const ProductWidget(
      {@required this.title,
      @required this.subTitle,
      @required this.price,
      @required this.imageUrl,
      this.goTo});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ProductScreen(
                  imageUrl: imageUrl,
                  title: title,
                  subTitle: subTitle,
                  price: price))),
      child: Ink(
        width: MediaQuery.of(context).size.width * 0.35,
        height: MediaQuery.of(context).size.height * 0.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Image.network(
              '$imageUrl',
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            ListTile(
              title: Text(
                '$title',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('$subTitle'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '$price\$',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                Icon(Icons.favorite)
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                color: Colors.black12,
                spreadRadius: 0,
                offset: Offset(3, 2))
          ],
        ),
      ),
    );
  }
}
