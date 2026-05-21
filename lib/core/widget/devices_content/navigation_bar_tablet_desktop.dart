




import 'package:flutter/material.dart';
import 'package:portfolio/core/widget/navigation_bar/nav_bar_item.dart';

class NavigatonBarTabletDesktop extends StatelessWidget {

  final VoidCallback homeTap;
  final VoidCallback aboutTap;
  final VoidCallback skillsTap;
  final VoidCallback projectTap;
  final VoidCallback experienceTap;
  final VoidCallback contactTap;

  const NavigatonBarTabletDesktop({
    super.key,
    required this.homeTap,
    required this.aboutTap,
    required this.skillsTap,
    required this.projectTap,
    required this.experienceTap,
    required this.contactTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: <Widget>[

        
          const Text(
            "Tilak Bista",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          //  NAV ITEMS
          Row(
            children: <Widget>[

              NavigationBarItem('Home', homeTap),
              const SizedBox(width: 15),

              NavigationBarItem('About', aboutTap),
              const SizedBox(width: 15),

                 NavigationBarItem('Skills', skillsTap),
              const SizedBox(width: 15),

              NavigationBarItem('Projects', projectTap),
                const SizedBox(width: 15),

                 NavigationBarItem('Experience', experienceTap),
                const SizedBox(width: 15),
                
              NavigationBarItem('Contact', contactTap),

            ],
          ),
        ],
      ),
    );
  }
}