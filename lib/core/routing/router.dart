



import 'package:flutter/material.dart';
import 'package:portfolio/core/routing/routes_name.dart';
import 'package:portfolio/features/about/about_page.dart';

class WebPages{


  Route<dynamic> generateRoute(RouteSettings settings) {

    switch(settings.name) {
      case RoutesName.about:
           return MaterialPageRoute(builder: (_) => AboutPage());

             default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(body: Text("Not found")),
        );

    }
  }
}