```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Properly handle the response here, avoiding potential errors
      final jsonResponse = json.decode(response.body);
      // Accessing a non-existent key will throw an error
      final value = jsonResponse['nonExistentKey']; 
      print(value); //This will cause an error if 'nonExistentKey' is not in jsonResponse
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle exceptions appropriately
    print('Error: $e');
  }
}
```