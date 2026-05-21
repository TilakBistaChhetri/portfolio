






import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/my_icons.dart';
import 'package:portfolio/features/project/project_card.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(


      builder: (context, sizingInformation) {
        bool isMobile =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile;

        double headingSize = isMobile ? 14 : 28;
        double descriptionSize = isMobile ? 8 : 15;

        double titleSize = isMobile ? 12 : 20;

        double imageSize = isMobile ? 25 : 100;

        return Scaffold(
          backgroundColor: Colors.white12,
          body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 20 : 60,
              vertical: 40,
            ),

            child: Column(
              children: [
                Center(
                  child: Text(
                    "My Projects",
                    style: TextStyle(
                      fontSize: headingSize,
                      color: Colors.white,
                    ),
                  ),
                ),

                SizedBox(height: 40),
                Wrap(
                  spacing: 24, // horizontal gap
                  runSpacing: 24, // vertical gap
                  alignment: WrapAlignment.center,
                  children: [
                    ProjectCard(
                      image: MyIcons.burger,
                      imageSize: imageSize,

                      title: "QuickMenu Application",
                      titleSize: titleSize,
                      description:
                          "Flutter + Django based restaurant management system.",

                      descriptionSize: descriptionSize,
                    ),

                    ProjectCard(
                      image: MyIcons.desktop,
                      imageSize: imageSize,

                      title: "Portfolio Website",
                      description:
                          "Responsive personal portfolio website built using Flutter Web.",

                      titleSize: titleSize,
                      descriptionSize: descriptionSize,
                    ),

                    ProjectCard(
                      image: MyIcons.ride,
                      imageSize: imageSize,

                      title: "Ride Sharing Application(Rider Side)",
                      description: "Implemented Google Maps integration and real-time ride tracking.",

                      titleSize: titleSize,
                      descriptionSize: descriptionSize,
                    ),

                    ProjectCard(
                      image: MyIcons.hospital,
                      imageSize: imageSize,

                      title: "Hospital Management System(HMS)",
                      description: "Hospital Management System with API integration using GetX.",

                      titleSize: titleSize,
                      descriptionSize: descriptionSize,
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




















  //               const SizedBox(height: 40),

  //               /// PROJECT GRID
  //               Wrap(
  //                 spacing: 24,
  //                 runSpacing: 24,
  //                 alignment: WrapAlignment.center,
  //                 children: [

  //                   /// PROJECT 1
  //                   projectCard(
  //                     context: context,
  //                     title: "Restaurant Menu App",
  //                     description:
  //                         "Flutter + Django based restaurant menu management system.",
  //                     tech: "Flutter • Django • REST API",
  //                     image:
  //                         "https://cdn-icons-png.flaticon.com/512/1046/1046784.png",
  //                     github:
  //                         "https://github.com/yourgithub/menuapp",
  //                     live:
  //                         "https://yourwebsite.com",
  //                     isMobile: isMobile,
  //                   ),

  //                   /// PROJECT 2
  //                   projectCard(
  //                     context: context,
  //                     title: "Portfolio Website",
  //                     description:
  //                         "Responsive personal portfolio website built using Flutter Web.",
  //                     tech: "Flutter Web • Responsive UI",
  //                     image:
  //                         "https://cdn-icons-png.flaticon.com/512/1055/1055687.png",
  //                     github:
  //                         "https://github.com/yourgithub/portfolio",
  //                     live:
  //                         "https://yourportfolio.com",
  //                     isMobile: isMobile,
  //                   ),

  //                   /// PROJECT 3
  //                   projectCard(
  //                     context: context,
  //                     title: "E-Commerce App",
  //                     description:
  //                         "Complete ecommerce application with cart and payment integration.",
  //                     tech: "Flutter • Firebase",
  //                     image:
  //                         "https://cdn-icons-png.flaticon.com/512/3081/3081559.png",
  //                     github:
  //                         "https://github.com/yourgithub/ecommerce",
  //                     live:
  //                         "https://yourstore.com",
  //                     isMobile: isMobile,
  //                   ),
  //                 ],
  //               ),
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }




//   Widget projectCard({
//     required BuildContext context,
//     required String title,
//     required String description,
//     required String tech,
//     required String image,
//     required String github,
//     required String live,
//     required bool isMobile,
//   }) {
//     return Container(
//       width: isMobile ? double.infinity : 340,
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: Colors.white10,
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(
//           color: Colors.white12,
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment:
//             CrossAxisAlignment.start,
//         children: [

//           /// IMAGE
//           Center(
//             child: Image.network(
//               image,
//               height: 80,
//             ),
//           ),

//           const SizedBox(height: 20),

//           /// TITLE
//           Text(
//             title,
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 22,
//               fontWeight: FontWeight.bold,
//             ),
//           ),

//           const SizedBox(height: 10),

//           /// DESCRIPTION
//           Text(
//             description,
//             style: const TextStyle(
//               color: Colors.white70,
//               height: 1.5,
//             ),
//           ),

//           const SizedBox(height: 16),

//           /// TECH STACK
//           Text(
//             tech,
//             style: const TextStyle(
//               color: Colors.orange,
//               fontWeight: FontWeight.w600,
//             ),
//           ),

//           const SizedBox(height: 20),

  
//         ],
//       ),
//     );
//   }
// }


