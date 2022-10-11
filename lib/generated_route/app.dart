import 'package:flutter/material.dart';
import 'package:flutter_provider_route/generated_route/screens/home_page.dart';
import 'package:flutter_provider_route/generated_route/screens/show_me_counter.dart';
import 'package:flutter_provider_route/generated_route/state/counter.dart';
import 'package:provider/provider.dart';

class GeneratedRouteApp extends StatefulWidget {

  GeneratedRouteApp({Key? key}) : super(key: key);

  @override
  State<GeneratedRouteApp> createState() => _GeneratedRouteAppState();
}

class _GeneratedRouteAppState extends State<GeneratedRouteApp> {
  final Counter _counter = Counter();

  @override
  void dispose() {
    _counter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (RouteSettings settings) {
        switch(settings.name){
          case '/':
            return MaterialPageRoute(
              builder: (context) => ChangeNotifierProvider.value(
                value: _counter,
                child: const HomePage(),
              ),
            );
          case '/counter':
            return MaterialPageRoute(
              builder: (context) => ChangeNotifierProvider.value(
                value: _counter,
                child: const ShowMeCounter(),
              ),
            );
          default :
            return null;
        }
      },
    );
  }
}
