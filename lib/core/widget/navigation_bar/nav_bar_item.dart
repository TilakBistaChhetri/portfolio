







import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const NavigationBarItem(this.title, this.onTap, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,

      child: Text(
        title,

        style: const TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
