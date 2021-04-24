import 'package:logintest/route_generator.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "my first app",
    debugShowMaterialGrid: false,
    initialRoute: '/',
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}
