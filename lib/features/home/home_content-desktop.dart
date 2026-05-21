



import 'package:flutter/material.dart';
import 'package:portfolio/features/home/home_page.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: HomePage(),
      ),
    );
  }
}



