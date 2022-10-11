import 'package:flutter/material.dart';
import 'package:flutter_provider_route/anonymous_route/screens/show_me_counter.dart';
import 'package:flutter_provider_route/anonymous_route/state/counter.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) {
                    return ChangeNotifierProvider.value(
                      value: context.read<Counter>(),
                      child: ShowMeCounter()
                    );
                  },)
                );
              },
              child: Text('show me counter', style: TextStyle(fontSize: 20),),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<Counter>().increment();
              },
              child: Text('Increment Counter', style: TextStyle(fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }
}
