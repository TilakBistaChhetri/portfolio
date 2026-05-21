import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String? github;
  final String? live;

  final double imageSize;
  final double titleSize;
  final double descriptionSize;
  final double? githubSize;
  final double? liveSize;
  const ProjectCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    this.github,
    this.live,
    required this.imageSize,
    required this.titleSize,
    required this.descriptionSize,
    this.githubSize,
    this.liveSize, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white12,
        ),
      ),
      child: Column(
       
        children: [

             Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: 
           Image.asset(
             image,
             height:imageSize,
           ),
         ),



          Text(title, style:TextStyle(color:Colors.white, fontSize:titleSize)),
          
          Text(description, style:TextStyle(color:Colors.white, fontSize:descriptionSize)),
          Text(github ?? ""),
          Text(live ?? ""),
      
        ],
      ),
    );
  }
}



