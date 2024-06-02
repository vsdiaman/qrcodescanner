import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/qr_scanner_page.dart';
import 'pages/result_page.dart';
import 'store/qr_store.dart';

void main() {
  runApp(
    Provider(
      create: (_) => QRStore(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => QRScannerPage(),
        '/result': (context) => ResultPage(),
      },
    );
  }
}
