import 'package:flutter/material.dart';

class CustomSkills extends StatelessWidget {
  final String title;
  final String image;

  final double titleSize;
  final double imageSize;

  const CustomSkills(
   {
    super.key,
     required this.title,
    required this.image,
    required this.titleSize,
    required this.imageSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 588,
      height: 70,

      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              title,
              style: TextStyle(
                fontSize: titleSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(image, height: imageSize),
          ),
        ],
      ),
    );
  }
}
