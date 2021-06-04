import 'package:beauty_shop_ui/screens/cart/cart_screen.dart';
import 'package:beauty_shop_ui/screens/custom_appBar.dart';
import 'package:beauty_shop_ui/screens/product/quality_card.dart';
import 'package:beauty_shop_ui/screens/product/top_container.dart';
import 'package:flutter/material.dart';

import 'bottom_info_widget.dart';

class ProductScreen extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final String? subTitle;
  final int? price;

  const ProductScreen(
      {@required this.imageUrl,
      @required this.title,
      @required this.subTitle,
      @required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 235, 235, 1),
      appBar: _buildCustomAppBar(context),
      body: Column(
        children: [
          buildTopContainer(context, imageUrl),
          SizedBox(
            height: 15,
          ),
          buildQualityCardRow(context),
          SizedBox(
            height: 30,
          ),
          BottomInfoWidget(
            price: price,
            title: title,
            subTitle: subTitle,
          ),
        ],
      ),
    );
  }

  CustomAppBar _buildCustomAppBar(BuildContext context) {
    return CustomAppBar(
      title: ' ',
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: Icon(
          Icons.arrow_back_ios_outlined,
          color: Colors.black,
        ),
      ),
      action: InkWell(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => CartScreen())),
        child: Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white60,
          ),
          child: Icon(
            Icons.ac_unit,
            color: Colors.black,
            size: 40,
          ),
        ),
      ),
    );
  }

  Row buildQualityCardRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildQualityCard(Icons.verified_outlined, 'Verified', context),
        buildQualityCard(Icons.water, 'oily', context),
        buildQualityCard(Icons.terrain, 'cold', context),
      ],
    );
  }
}
