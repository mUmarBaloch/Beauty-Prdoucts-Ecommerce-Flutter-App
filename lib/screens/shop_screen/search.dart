import 'package:flutter/material.dart';

Row buildSearchBar(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Container(
        decoration: BoxDecoration(
            color: Colors.white60, borderRadius: BorderRadius.circular(6)),
        width: MediaQuery.of(context).size.width / 2,
        height: 40,
        padding: EdgeInsets.only(bottom: 0),
        child: TextField(
          showCursor: false,
          style: TextStyle(
            fontSize: 15,
            letterSpacing: .2,
          ),
          maxLength: 20,
          decoration: InputDecoration(
            counterText: '',
            hintText: '   Face wash',
            hintStyle: TextStyle(
              fontSize: 20,
              letterSpacing: .2,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          Icons.settings,
          size: 40,
        ),
      )
    ],
  );
}
