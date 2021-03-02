import 'package:LojaOnline/screens/home_screen.dart';
import 'package:flutter/material.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mercadinho',
      theme: ThemeData(
       primarySwatch: Colors.red,
       primaryColor: Color.fromARGB(255, 4, 125, 141)
       
      ),
      debugShowCheckedModeBanner: false,
      home:  HomeScreen()
    );
  }
}

