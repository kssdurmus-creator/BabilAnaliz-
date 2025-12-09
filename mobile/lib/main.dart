import 'package:flutter/material.dart';

void main() {
  runApp(const BabilAnaliz());
}

class BabilAnaliz extends StatelessWidget {
  const BabilAnaliz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Babil Analiz"),
        ),
        body: const Center(
          child: Text(
            "Babil Analiz Uygulaması Çalışıyor",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
