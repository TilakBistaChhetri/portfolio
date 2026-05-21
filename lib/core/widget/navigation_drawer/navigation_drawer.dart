import 'package:flutter/material.dart';
import 'package:portfolio/core/widget/navigation_drawer/drawer_item.dart';

class CustomNavigationDrawer extends StatelessWidget {
  final VoidCallback onHomeTap;
  final VoidCallback onAboutTap;
  final VoidCallback onSkillsTap;
  final VoidCallback onProjectsTap;
  final VoidCallback onExperienceTap;

  final VoidCallback onContactTap;

  const CustomNavigationDrawer({
    super.key,
    required this.onHomeTap,
    required this.onAboutTap,
    required this.onSkillsTap,
    required this.onProjectsTap,
    required this.onExperienceTap,

    required this.onContactTap,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 23, 15, 46),

      child: ListView(
        padding: EdgeInsets.zero,

        children: <Widget>[
          DrawerItem("Home", onHomeTap),

          DrawerItem("About", onAboutTap),

          DrawerItem("Skills", onSkillsTap),

          DrawerItem("Projects", onProjectsTap),

          DrawerItem("Experience", onExperienceTap),

          DrawerItem("Contact", onContactTap),
        ],
      ),
    );
  }
}
