import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _count = 0;


  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      _count--;
    });
  }

  void _multiply() {
    setState(() {
      _count *= 2;
    });
  }

  void _divide() {
    setState(() {
      _count = _count ~/ 2; 
    });
  }

  void _reset() {
    setState(() {
      _count = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
        centerTitle: true,
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'VALOR ACTUAL',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
            ),
            Text(
              '$_count',
              style: const TextStyle(fontSize: 120, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min, 
        children: [
          FloatingActionButton(
            onPressed: _increment,
            tooltip: 'Sumar (+1)',
            child: const Icon(Icons.add), 
          ),
          const SizedBox(width: 10), // 

          FloatingActionButton(
            onPressed: _decrement,
            tooltip: 'Restar (-1)',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10), // 
          FloatingActionButton(
            onPressed: _multiply,
            tooltip: 'Multiplicar (*2)',
            child: const FaIcon(FontAwesomeIcons.times),
          ),
          const SizedBox(width: 10), 
          FloatingActionButton(
            onPressed: _divide,
            tooltip: 'Dividir (/2)',
            child: const FaIcon(FontAwesomeIcons.divide),
          ),
          const SizedBox(width: 10),

          FloatingActionButton(
            onPressed: _reset,
            tooltip: 'Reset (0)',
            child: const Icon(Icons.refresh),
          ),
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}