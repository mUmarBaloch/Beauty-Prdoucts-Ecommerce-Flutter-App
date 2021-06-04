import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final Widget? leading;
  final action;

  const CustomAppBar(
      {@required this.title, @required this.leading, @required this.action});
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(235, 235, 235, 1),
      elevation: 0,
      centerTitle: true,
      leading: leading,
      actions: [
        action,
        SizedBox(
          width: 20,
        ),
      ],
      title: Text(
        '$title',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
