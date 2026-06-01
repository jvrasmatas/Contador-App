import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {

  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Información'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Informacion'),
      ),
    );
  }
}
