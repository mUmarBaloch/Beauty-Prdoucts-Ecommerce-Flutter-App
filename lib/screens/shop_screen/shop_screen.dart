import 'package:beauty_shop_ui/screens/shop_screen/product_widget.dart';
import 'package:beauty_shop_ui/screens/shop_screen/search.dart';
import 'package:flutter/material.dart';
import '../custom_appBar.dart';

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color.fromRGBO(235, 235, 235, 1),
        appBar: _buildCustomAppBar(context),
        body: Container(
          padding: EdgeInsets.only(left: 30, right: 30, bottom: 30),
          child: ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              buildSearchBar(context),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProductWidget(
                      imageUrl: 'https://3.imimg.com/data3/BC/'
                          'GY/MY-8185079/fair-lovely-max-f'
                          'airness-facewash-500x500.png',
                      title: 'Fair and lovly men',
                      subTitle: 'citrus freshness',
                      price: 20),
                  ProductWidget(
                      imageUrl:
                          'https://cdn.shopify.com/s/files/1/1961/9999/products/garnier-men-power-light-face-wash-v-50-g.png?v=1545778682',
                      title: 'Garnear men',
                      subTitle: 'double action',
                      price: 45)
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProductWidget(
                      imageUrl: 'https://3.imimg.com/data3/BC/'
                          'GY/MY-8185079/fair-lovely-max-f'
                          'airness-facewash-500x500.png',
                      title: 'Fair and lovly men',
                      subTitle: 'citrus freshness',
                      price: 20),
                  ProductWidget(
                      imageUrl:
                          'https://cdn.shopify.com/s/files/1/1961/9999/products/garnier-men-power-light-face-wash-v-50-g.png?v=1545778682',
                      title: 'Garnear men',
                      subTitle: 'double action',
                      price: 45)
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProductWidget(
                      imageUrl:
                          'https://cdn.shopify.com/s/files/1/1961/9999/products/garnier-men-power-light-face-wash-v-50-g.png?v=1545778682',
                      title: 'Garnear men',
                      subTitle: 'double action',
                      price: 45),
                  SizedBox(
                    height: 10,
                    width: MediaQuery.of(context).size.width * 0.35,
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  CustomAppBar _buildCustomAppBar(BuildContext context) {
    return CustomAppBar(
      title: ' Search Products ',
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_back_ios_outlined,
          color: Colors.black,
        ),
      ),
      action: CircleAvatar(
        backgroundImage: NetworkImage(
            'https://scontent.fkhi11-1.fna.fbcdn.net/v/t1.6435-9/194284566_1530897570574689_9048636089664679492_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGqPPpR9HbGfAwh4lrXcV1sFtrXAtie_7gW2tcC2J7_uHfJGZ7SGPps-6_K68iOVegsMK15P1-Kbq_olQP5hHH5&_nc_ohc=NWeq1QhVEDYAX_rQrvu&_nc_ht=scontent.fkhi11-1.fna&oh=679db0712a818f2dffce76dbf7f591de&oe=60DCE05A'),
      ),
    );
  }
}
