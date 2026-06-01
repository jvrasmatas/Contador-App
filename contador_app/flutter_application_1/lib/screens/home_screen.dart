import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Contador'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('0'),
      ),
    );
  }
}
