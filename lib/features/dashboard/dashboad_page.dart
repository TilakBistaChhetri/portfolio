import 'package:flutter/material.dart';
import 'package:portfolio/core/widget/centered_view/centered_view.dart';
import 'package:portfolio/core/widget/navigation_bar/custom_navigation_bar.dart';
import 'package:portfolio/core/widget/navigation_drawer/navigation_drawer.dart';
import 'package:portfolio/features/about/about_page.dart';
import 'package:portfolio/features/contact/contact_page.dart';
import 'package:portfolio/features/experience/experience_page.dart';
import 'package:portfolio/features/home/home_page.dart';
import 'package:portfolio/features/project/project_page.dart';
import 'package:portfolio/features/skills/skills_page.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => DashboardPageState();
}

class DashboardPageState extends State<DashboardPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final ScrollController scrollController = ScrollController();

  //  SCROLL FUNCTION
  void scrollTo(double position) {
    scrollController.animateTo(
      position,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          key: _scaffoldKey,
          backgroundColor: const Color.fromARGB(255, 23, 15, 46),

          //  DRAWER
          drawer: CustomNavigationDrawer(
            onHomeTap: () => scrollTo(0),
            onAboutTap: () => scrollTo(height),
            onSkillsTap: () => scrollTo(height * 2),
            onProjectsTap: () => scrollTo(height * 3),

            onExperienceTap: () => scrollTo(height * 4),

            onContactTap: () => scrollTo(height * 5),
          ),

          body: CenteredView(
            Column(
              children: [
                //  NAVBAR
                CustomNavigationBar(
                  onMenuPressed: () {
                    _scaffoldKey.currentState?.openDrawer();
                  },

                  onHomeTap: () => scrollTo(0),
                  onAboutTap: () => scrollTo(height),
                  onSkillsTap: () => scrollTo(height * 2),
                  onProjectsTap: () => scrollTo(height * 3),
                  onExperienceTap: () => scrollTo(height * 4),
                  onContactTap: () => scrollTo(height * 5),
                ),

                //  SCROLLABLE BODY
                Expanded(
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: [
                        // home
                        SizedBox(
                          height: height,
                          width: double.infinity,
                          child: const HomePage(),
                        ),

                        //SizedBox(height: 30),
                        SizedBox(
                          height: height,
                          width: double.infinity,
                          child: AboutPage(),
                        ),

                        SizedBox(height: 30),
                        SizedBox(
                         height: height,
                          width: double.infinity,
                          child: SkillsPage(),
                        ),

                        SizedBox(height: 30),
                        SizedBox(
                          height: height,
                          width: double.infinity,
                          child: const ProjectPage(),
                        ),

                        SizedBox(height: 30),

                        SizedBox(
                          //height: height,
                          width: double.infinity,
                          child: const ExperiencePage(),
                        ),

                        SizedBox(height: 30),

                        SizedBox(
                         // height: height,
                          width: double.infinity,
                          child: const ContactPage(),
                        ),
                      ],
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
