





import 'package:flutter/material.dart';
import 'package:portfolio/core/widget/devices_content/navigation_bar_mobile.dart';
import 'package:portfolio/core/widget/devices_content/navigation_bar_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CustomNavigationBar extends StatelessWidget {
  final VoidCallback onMenuPressed;

  final VoidCallback onHomeTap;
  final VoidCallback onAboutTap;
  final VoidCallback onSkillsTap;
  final VoidCallback onProjectsTap;

  final VoidCallback onExperienceTap;
    final VoidCallback onContactTap;

  const CustomNavigationBar({
    super.key,
    required this.onMenuPressed,
    required this.onHomeTap,
    required this.onAboutTap,
    required this.onSkillsTap,
    required this.onProjectsTap,
    required this.onExperienceTap,
    required this.onContactTap,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(
        onMenuPressed: onMenuPressed,
      ),

      tablet: NavigatonBarTabletDesktop(
        homeTap: onHomeTap,
        aboutTap: onAboutTap,
        skillsTap: onSkillsTap,
        projectTap: onProjectsTap,
        experienceTap: onExperienceTap,
        contactTap: onContactTap,
        
      ),
    );
  }
}




