import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "http://10.0.2.2:8000"; // Android emulator için localhost

  Future<Map<String, dynamic>> getPrediction(String home, String away) async {
    final url = Uri.parse("$baseUrl/predict");
    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "team_home": home,
        "team_away": away,
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Tahmin alınamadı: ${response.statusCode}");
    }
  }
}
