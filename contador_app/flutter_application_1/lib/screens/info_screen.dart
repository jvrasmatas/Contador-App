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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/foto profesional.jpeg'),
            ),
            const SizedBox(height: 24),
            const Text(
              'Juan Vrasmatas',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Ingeniería de Sistemas',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 4),
            const Text(
              'Universidad de Margarita',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_rounded),
              label: const Text('Regresar'),
            ),
          ],
        ),
      ),
    );
  }
}
