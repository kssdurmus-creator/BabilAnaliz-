import 'package:flutter/material.dart';

void main() {
  runApp(const BabilAnalizApp());
}

class BabilAnalizApp extends StatelessWidget {
  const BabilAnalizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BabilAnaliz',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0E0E10),
        colorScheme: ThemeData.dark().colorScheme.copyWith(
              primary: const Color(0xFFECB84A),
            ),
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BabilAnaliz'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 8),
          const Center(
            child: Text(
              'Favori Takımlar',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 24),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: ListTile(
              leading: CircleAvatar(child: Text('B')),
              title: const Text('FC Barcelona'),
              subtitle: const Text('LaLiga'),
            ),
          ),
          const SizedBox(height: 12),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: ListTile(
              leading: CircleAvatar(child: Text('R')),
              title: const Text('Real Madrid CF'),
              subtitle: const Text('LaLiga'),
            ),
          ),
        ],
      ),
    );
  }
}