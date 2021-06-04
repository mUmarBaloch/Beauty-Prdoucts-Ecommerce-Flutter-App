import 'package:beauty_shop_ui/screens/shop_screen/shop_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
      theme: ThemeData(
        accentColor: Colors.white,
        primaryColor: Colors.blueGrey,
      ),
      home: ShopScreen());
}
