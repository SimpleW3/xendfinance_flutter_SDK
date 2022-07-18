import 'package:flutter/material.dart';
import 'package:xendfinance_flutter_sdk/xendfinance_flutter_sdk.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  await dotenv.load(fileName: '.env');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void onclick() async {
    String privateKey = dotenv.get('PK', fallback: '');
    XVault protocol = XVault(56, privateKey);
    // final ew = await protocol.ppfs('USDC');
    // print(ew);
    final approval = await protocol.approve('BUSD', 4);
    print(approval);
    final deposit = await protocol.deposit('BUSD', 4);
    print(deposit);
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
