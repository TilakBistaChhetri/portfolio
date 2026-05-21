



import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/my_icons.dart';
import 'package:portfolio/features/skills/custom_skills.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        bool isMobile =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile;

        double headingSize = isMobile ? 14 : 28;
        double titleSize = isMobile ? 8 : 20;

        double imageSize = isMobile ? 35 : 150;

        return Scaffold(
          backgroundColor: Colors.white12,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30),
                Text(
                  "Skills",
                  style: TextStyle(color: Colors.white, fontSize: headingSize),
                ),

                SizedBox(height: 30),
                Wrap(
                  spacing: 24,
                  runSpacing: 24,
                  children: [
                    CustomSkills(
                      title: "Dart",
                      titleSize: titleSize,
                      imageSize: imageSize,
                      image: MyIcons.dart,
                    ),

                    CustomSkills(
                      title: "Flutter",
                      titleSize: titleSize,
                      image: MyIcons.flutter,
                      imageSize: imageSize,
                    ),

                    CustomSkills(
                      title: "Python",
                      titleSize: titleSize,
                      image: MyIcons.python,
                      imageSize: imageSize,
                    ),

                    CustomSkills(
                      title: "Django",
                      titleSize: titleSize,
                      image: MyIcons.python,
                      imageSize: imageSize,
                    ),

                    CustomSkills(
                      title: "PostgreSql",
                      titleSize: titleSize,
                      image: MyIcons.postgresql,
                      imageSize: imageSize,
                    ),

                    CustomSkills(
                      title: "Postman",
                      titleSize: titleSize,
                      image: MyIcons.postman,
                      imageSize: imageSize,
                    ),

                    CustomSkills(
                      title: "Github",
                      titleSize: titleSize,
                      image: MyIcons.github,
                      imageSize: imageSize,
                    ),

                    CustomSkills(
                      title: "Git",
                      titleSize: titleSize,
                      image: MyIcons.git,
                      imageSize: imageSize,
                    ),

                    CustomSkills(
                      title: "Vs code",
                      titleSize: titleSize,
                      image: MyIcons.vscode,
                      imageSize: imageSize,
                    ),




                    CustomSkills(
                      title: "Android Studio",
                      titleSize: titleSize,
                      image: MyIcons.android,
                      imageSize: imageSize,
                    ),




                    CustomSkills(
                      title: "HTML & CSS",
                      titleSize: titleSize,
                      image: MyIcons.css,
                      imageSize: imageSize,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
