




import 'package:flutter/material.dart';
import 'package:portfolio/core/widget/navigation_bar/nav_bar_item.dart';

class DrawerItem extends StatelessWidget {

  final String title;
  final VoidCallback onTap;

  const DrawerItem(
    this.title,
    this.onTap, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.only(
        left: 30,
        top: 60,
      ),

      child: Row(
        children: <Widget>[

          const SizedBox(width: 30),

          NavigationBarItem(
            title,
            onTap,
          ),
        ],
      ),
    );
  }
}




