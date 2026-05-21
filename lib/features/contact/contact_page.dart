import 'package:flutter/material.dart';
import 'package:portfolio/features/contact/contact_card.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        bool isMobile =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile;

        double headingSize = isMobile ? 14 : 28;
        double descriptionSize = isMobile ? 8 : 15;

        double titleSize = isMobile ? 12 : 20;
        double valueSize = isMobile ? 9 : 12;

        double iconSize = isMobile ? 22 : 30;

        return Container(
          color: Colors.white12,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 20 : 20,
              vertical: 20,
            ),

            child: Column(
              children: [
                Center(
                  child: Text(
                    "Contact",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: headingSize,
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  "Let’s turn your idea into a real mobile application. I’d love to hear from you.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: descriptionSize,
                  ),
                ),

                SizedBox(height: 20),

                isMobile? 

                     Column(
                 
                  children: [
                    ContactCard(
                      title: "Email",
                      value: "tilakbista980@gmail.com",
                      titleSize: titleSize,
                      valueSize: valueSize,
                      iconSize: iconSize,
                      icon: Icons.email,
                    ),

                    SizedBox(height:5),

                    ContactCard(
                      title: "Phone/Mobile",
                      value: "9767648647",
                      titleSize: titleSize,
                      valueSize: valueSize,
                      iconSize: iconSize,
                      icon: Icons.phone,
                    ),

                     SizedBox(height:5),

                    ContactCard(
                      title: "Location",
                      value: "Kathmandu, Nepal",
                      titleSize: titleSize,
                      valueSize: valueSize,
                      iconSize: iconSize,
                      icon: Icons.location_on,
                    ),
                  ],
                )

                :

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContactCard(
                      title: "Email",
                      value: "tilakbista980@gmail.com",
                      titleSize: titleSize,
                      valueSize: valueSize,
                      iconSize: iconSize,
                      icon: Icons.email,
                    ),

                    ContactCard(
                      title: "Phone/Mobile",
                      value: "9767648647",
                      titleSize: titleSize,
                      valueSize: valueSize,
                      iconSize: iconSize,
                      icon: Icons.phone,
                    ),

                    ContactCard(
                      title: "Location",
                      value: "Kathmandu, Nepal",
                      titleSize: titleSize,
                      valueSize: valueSize,
                      iconSize: iconSize,
                      icon: Icons.location_on,
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




















