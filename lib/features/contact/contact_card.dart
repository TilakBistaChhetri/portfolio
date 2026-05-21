





import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final String title;
  final double titleSize;
  final String value;
  final double valueSize;

  final double iconSize;
  final IconData icon;

  
  const ContactCard({
    super.key,
    required this.title,
    required this.value,
    required this.titleSize,
    required this.valueSize,
    required this.iconSize,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
         
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white12,
        ),
      ),

      child: Column(
      
        children: [
          Icon(icon, color: Colors.orange, size: iconSize),

          Text(
            title,
            style: TextStyle(fontSize: titleSize, color: Colors.white),
          ),

          Text(
            value,
            style: TextStyle(fontSize: valueSize, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
