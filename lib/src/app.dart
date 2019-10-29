import 'package:app_contador/src/pages/contador_page.dart';
import 'package:flutter/material.dart';
// import 'package:app_contador/src/pages/home_page.dart';

class App extends StatelessWidget {

  @override
  Widget build( context ) {
    return MaterialApp(
      home: Center(
        child: ContadorPage(),
        // child: HomePage(),
      ),
    );
  }

}