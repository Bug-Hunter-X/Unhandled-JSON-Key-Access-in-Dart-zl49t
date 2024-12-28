```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      // Check if the key exists before accessing it
      if (jsonResponse.containsKey('nonExistentKey')) {
        final value = jsonResponse['nonExistentKey'];
        print(value);
      } else {
        print('Key 