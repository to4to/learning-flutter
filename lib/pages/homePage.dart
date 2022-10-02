
import 'package:flutter/material.dart';
import 'package:flutter_practice_001/pages/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold
    ( 
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("The Crypto"),
      ),
      body: Center(
        child: Container(
          child: const Text("Welcome To Flutter"), 
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}

