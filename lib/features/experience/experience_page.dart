import 'package:flutter/material.dart';
import 'package:portfolio/features/experience/experience_card.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        bool isMobile =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile;

        double headingSize = isMobile ? 14 : 28;
        double descriptionSize = isMobile ? 8 : 14;

        double positionSize = isMobile ? 14 : 28;

        double companyNameSize = isMobile ? 10 : 20;

        double timePeriodSize = isMobile ? 9 : 17;

        return Container(
         // backgroundColor: Colors.white12,
          color:Colors.white12,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 20 : 20,
              vertical: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Experience",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: headingSize,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ExperienceCard(
                  position: 'Flutter Developer',
                  companyName: 'Blue Chip Businesses',
                  timePeriod: 'July, 2025 - Present',
                  description:
                      'Developed scalable Flutter application using BLoC, Getx state management, MVC structure and clean architecture and REST API integration',
                  positionSize: positionSize,
                  companyNameSize: companyNameSize,
                  timePeriodSize: timePeriodSize,
                  descriptionSize: descriptionSize,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
