```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access data here, if there is a problem, it'll throw an exception.
      print(jsonData['someKey']);
    } else {
      // Handle error response
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during the API call or JSON processing
    print('Error: $e');
    rethrow; // Re-throw to allow higher-level error handling
  }
}
```