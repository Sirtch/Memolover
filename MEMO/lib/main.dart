import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/add_memory_screen.dart';
import 'screens/movie_tickets_screen.dart';
import 'screens/memory_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diário de Memórias',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Tema azul
      ),
      home: HomeScreen(),
    );
  }
}