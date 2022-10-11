import 'package:flutter/material.dart';
import 'package:flutter_provider_route/anonymous_route/screens/home_page.dart';

class AnonymousRouteApp extends StatelessWidget {
  const AnonymousRouteApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage()
    );
  }
}
