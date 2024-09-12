import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text('Staggered Grid View',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}
