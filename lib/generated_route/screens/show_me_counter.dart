import 'package:flutter/material.dart';
import 'package:flutter_provider_route/generated_route/state/counter.dart';
import 'package:provider/provider.dart';

class ShowMeCounter extends StatelessWidget {
  const ShowMeCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('counter'),),
      body: Center(
        child: Text('${context.watch<Counter>().counter}', style: TextStyle(fontSize: 20),),
      ),
    );
  }
}
