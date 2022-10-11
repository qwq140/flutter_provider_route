import 'package:flutter/material.dart';
import 'package:flutter_provider_route/named_route/screens/home_page.dart';
import 'package:flutter_provider_route/named_route/screens/show_me_counter.dart';
import 'package:flutter_provider_route/named_route/state/counter.dart';
import 'package:provider/provider.dart';

class NamedRouteApp extends StatefulWidget {

  NamedRouteApp({Key? key}) : super(key: key);

  @override
  State<NamedRouteApp> createState() => _NamedRouteAppState();
}

class _NamedRouteAppState extends State<NamedRouteApp> {
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
      routes: {
        '/': (context) => ChangeNotifierProvider.value(
              value: _counter,
              child: const HomePage(),
            ),
        '/counter': (context) => ChangeNotifierProvider.value(
              value: _counter,
              child: const ShowMeCounter(),
            )
      },
      initialRoute: '/',
    );
  }
}
