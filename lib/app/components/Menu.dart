import 'package:flutter/material.dart';

Widget Menu(BuildContext context){
  return Drawer(
      child: ListView(
          children: <Widget>[
            DrawerHeader(
                child: Text("Menu")
            ),
          ]
      )
  );
}
