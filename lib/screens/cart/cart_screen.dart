import 'package:beauty_shop_ui/data/global_data.dart';
import 'package:beauty_shop_ui/screens/cart/pricing.dart';
import 'package:beauty_shop_ui/screens/cart/promo_card.dart';
import 'package:beauty_shop_ui/screens/custom_appBar.dart';
import 'package:beauty_shop_ui/screens/shop_screen/shop_screen.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  CartScreen({this.imageUrl, this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 235, 235, 1),
      appBar: _buildCustomAppBar(context),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Column(children: productTiles),
            buildPromoCard(),
            Pricing(),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShopScreen(),
                  )),
              child: Text(
                'Proceed To Checkout',
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 1,
                ),
              ),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }

  CustomAppBar _buildCustomAppBar(BuildContext context) {
    return CustomAppBar(
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(
          Icons.arrow_back_ios_outlined,
          color: Colors.black,
        ),
      ),
      title: ' Cart Screen ',
      action: CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.shop_2,
          color: Colors.black,
        ),
      ),
    );
  }
}
