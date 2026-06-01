import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _valor = 0;

  void sumar() {
    _valor++;
    setState(() {});
  }
  void restar() {
    _valor--;
    setState(() {});
  }
  void resetear() {
    _valor = 0;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Contador'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/info'),
            icon: const Icon(Icons.info_rounded),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Valor actual',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '$_valor',
              style: const TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'sumar',
            onPressed: sumar,
            backgroundColor: Color.fromARGB(255, 25, 34, 98),
            child: const Icon(Icons.add, color: Colors.white),
          ),
          const SizedBox(height: 12),
          FloatingActionButton(
            heroTag: 'restar',
            onPressed: restar,
            backgroundColor: const Color.fromARGB(255, 25, 34, 98),
            child: const Icon(Icons.remove, color: Colors.white),
          ),
          const SizedBox(height: 12),
          FloatingActionButton(
            heroTag: 'resetear',
            onPressed: resetear,
            backgroundColor: Color.fromARGB(255, 25, 34, 98),
            child: const Icon(Icons.refresh_rounded, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
