import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _count = 0;

  void _increment() {
    setState(() { _count++; });
  }

  void _decrement() {
    if (_count > 0) { setState(() { _count--; }); }
  }

  void _multiply() {
    setState(() { _count *= 2; });
  }

  void _divide() {
    setState(() { _count = _count ~/ 2; });
  }

  void _reset() {
    setState(() { _count = 0; });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador Playstation'),
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
          _buildPSButton(
            onPressed: _increment, 
            color: Colors.green.shade700, 
            icon: Icons.change_history, 
            tooltip: 'Sumar (+1)'
          ),
          const SizedBox(width: 12),

          _buildPSButton(
            onPressed: _decrement, 
            color: Colors.pink.shade600, 
            icon: Icons.check_box_outline_blank, 
            tooltip: 'Restar (-1)'
          ),
          const SizedBox(width: 12),

          _buildPSButton(onPressed: _multiply, 
          color: Colors.red.shade700, 
          icon: Icons.circle_outlined, 
          tooltip: 'Multiplicar (*2)'
          ),
          const SizedBox(width: 12),

          _buildPSButton(onPressed: _divide, 
          color: const Color(0xFF0070D1), 
          icon: Icons.clear, 
          tooltip: 'Dividir (/2)'
          ),
          const SizedBox(width: 12),

          _buildPSButton(onPressed: _reset, 
          color: Colors.grey.shade800, 
          icon: Icons.refresh, 
          tooltip: 'Reset (0)'
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildPSButton({
    required VoidCallback onPressed,
    required Color color,
    required IconData icon,
    required String tooltip,
  }) {
    return Tooltip(
      message: tooltip,
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            width: 48,
            height: 48,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Icon(icon, color: Colors.white, size: 28),
          ),
        ),
      ),
    );
  }
}