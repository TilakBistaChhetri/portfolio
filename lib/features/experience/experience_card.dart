import 'package:flutter/material.dart';

class ExperienceCard extends StatelessWidget {
  final String position;
  final String companyName;
  final String timePeriod;
  final String description;
  final double positionSize;
  final double companyNameSize;
  final double timePeriodSize;
  final double descriptionSize;

  const ExperienceCard({
    super.key,
    required this.position,
    required this.companyName,
    required this.timePeriod,
    required this.description,
    required this.positionSize,
    required this.companyNameSize,
    required this.timePeriodSize,
    required this.descriptionSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            position,
            style: TextStyle(fontSize: positionSize, color: Colors.white),
          ),
          Text(
            companyName,
            style: TextStyle(fontSize: companyNameSize, color: Colors.white),
          ),
          Text(
            timePeriod,
            style: TextStyle(fontSize: timePeriodSize, color: Colors.white),
          ),
          Text(
            description,
            style: TextStyle(fontSize: descriptionSize, color: Colors.white),
          ),
        ],
      );
    
  }
}
