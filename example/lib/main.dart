import 'package:flutter/material.dart';
import 'package:xendfinance_flutter_sdk/xendfinance_flutter_sdk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void onclick() async {
    XAuto protocol = XAuto(56, 'xVault');
    final ew = await protocol.ppfs('USDC');
    print(ew);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Column(children: [
            ElevatedButton(
                onPressed: () {
                  onclick();
                },
                child: const Text('Text added')),
            const Text('data')
          ]),
        ),
      ),
    );
  }
}
