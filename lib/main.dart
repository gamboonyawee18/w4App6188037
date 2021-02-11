import 'package:flutter/material.dart';

import './MyPetShop.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'w4App6188037',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(appBar: AppBar(
          title: Text('Gamp\'s Pet Shop'),
      ),
          body: MyPetShop()),
    );
  }
}
