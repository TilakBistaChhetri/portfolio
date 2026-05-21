



import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/my_images.dart';
import 'package:portfolio/core/utils/my_strings.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        bool isMobile =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile;

        double titleSize = isMobile ? 12 : 25;
        double descriptionSize = isMobile ? 8 : 20;
        double headingSize = isMobile ? 14 : 28;
        double imageSize = isMobile ? 200 : 300;

        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 23, 15, 46),

          body: Padding(
            padding: EdgeInsets.all(20),
            child: isMobile
                ? Column(
                    children: [
                      ClipOval(
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color.fromARGB(255, 68, 8, 103),
                              width: 2,
                            ),
                          ),
                          child: Image.asset(
                            MyImages.profile,
                            width: imageSize,
                            height: imageSize,

                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        "Flutter Developer",
                        style: TextStyle(
                          fontSize: headingSize,

                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        MyStrings.aboutDetails,
                        textAlign: isMobile ? TextAlign.center : TextAlign.left,

                        style: TextStyle(
                          fontSize: descriptionSize,

                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),

                            Text(
                              "Flutter Developer",
                              style: TextStyle(
                                fontSize: headingSize,

                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 10),

                            Text(
                              MyStrings.aboutDetails,
                              textAlign: isMobile
                                  ? TextAlign.center
                                  : TextAlign.left,

                              style: TextStyle(
                                fontSize: descriptionSize,

                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: 20),

                      ClipOval(
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color.fromARGB(255, 68, 8, 103),
                              width: 2,
                            ),
                          ),
                          child: Image.asset(
                            MyImages.profile,
                            width: imageSize,
                            height: imageSize,

                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        );
      },
    );
  }
}
