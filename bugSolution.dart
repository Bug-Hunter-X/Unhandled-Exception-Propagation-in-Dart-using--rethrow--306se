```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print(jsonData);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on Exception catch (e) {
    // Handle specific exceptions
    print('Error: $e');
    // Consider implementing more robust error handling, such as logging or showing an error message to the user.
  } catch (e) {
    // Handle any other type of error
    print('Unexpected error: $e');
    // Implementing appropriate fallback mechanisms
  }
}
```