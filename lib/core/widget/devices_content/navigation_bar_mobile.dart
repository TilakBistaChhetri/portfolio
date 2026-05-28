


import 'package:flutter/material.dart';

class NavigationBarMobile extends StatelessWidget {
  final VoidCallback onMenuPressed;

  const NavigationBarMobile({super.key, required this.onMenuPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          IconButton(
            onPressed: onMenuPressed,
            icon: Icon(Icons.menu),
          ),

          Text(
            "Tilak Bista",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}







