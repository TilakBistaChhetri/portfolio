





import 'package:flutter/material.dart';
import 'package:portfolio/features/home/home_page.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: HomePage(),
      ),
    );
  }
}



