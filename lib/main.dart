import 'package:flutter/material.dart';
import 'package:flutter_qr_sample/screens/qr_code_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Scanner Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QRCode Scanner"),
      ),
      body: Center(
          child: MaterialButton(
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QRCodeScreen(),
            )),
        textColor: Colors.white,
        color: Colors.red,
        child: Text("Go To Scanner"),
      )),
    );
  }
}
