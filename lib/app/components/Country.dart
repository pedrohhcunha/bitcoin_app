import 'package:flutter/material.dart';

Widget Country(String? photo, double? value){

  return Container (
    color: Colors.white,
    margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
      child: Row (
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 32,
            child: Image.asset('flags/${photo}.png'),
          ),
          SizedBox(
            width: 16.0,
          ),
          Text('\$${value.toString()}.0'),
        ],
      ),
    ),
  );
}
