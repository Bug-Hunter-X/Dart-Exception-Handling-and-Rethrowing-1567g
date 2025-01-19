```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate an asynchronous operation that might throw an exception
    await Future.delayed(Duration(seconds: 2));
    var randomNumber = new Random().nextInt(10); // Simulate API call that might fail
    if (randomNumber % 2 == 0) {
      throw Exception('Even number generated!');
    }
    print('Data fetched successfully!');
  } on Exception catch (e) {
    // Handle the exception
    print('Error fetching data: $e');
    rethrow; // Re-throw the exception to be handled by the caller if necessary
  } catch (e) {
    // Handle any other potential errors
    print('An unexpected error occurred: $e');
    rethrow; // Re-throw the exception to be handled by the caller if necessary
  }
}

void main() async {
  try {
    await fetchData();
  } on Exception catch (e) {
    print('Exception caught in main: $e');
  } catch (e) {
    print('Unexpected error caught in main: $e');
  } finally {
    print('This will always execute');
  }
}
```