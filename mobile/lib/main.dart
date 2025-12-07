import 'package:flutter/material.dart';
import 'services/api_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BabilAnaliz',
      theme: ThemeData.dark(),
      home: const PredictionPage(),
    );
  }
}

class PredictionPage extends StatefulWidget {
  const PredictionPage({super.key});

  @override
  State<PredictionPage> createState() => _PredictionPageState();
}

class _PredictionPageState extends State<PredictionPage> {
  final ApiService api = ApiService();
  String result = "";
  final TextEditingController homeController = TextEditingController();
  final TextEditingController awayController = TextEditingController();

  void _getPrediction() async {
    final home = homeController.text;
    final away = awayController.text;
    if (home.isEmpty || away.isEmpty) return;

    final data = await api.getPrediction(home, away);
    setState(() {
      result = "${data['prediction']} (Güven: ${data['confidence']})";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BabilAnaliz")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: homeController,
              decoration: const InputDecoration(labelText: "Ev Sahibi Takım"),
            ),
            TextField(
              controller: awayController,
              decoration: const InputDecoration(labelText: "Deplasman Takımı"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _getPrediction,
              child: const Text("Tahmin Al"),
            ),
            const SizedBox(height: 20),
            Text(result, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
