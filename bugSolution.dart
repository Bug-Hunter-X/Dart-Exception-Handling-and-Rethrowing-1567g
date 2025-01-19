```dart
import 'dart:async';
import 'dart:math';

Future<void> fetchData() async {
  try {
    await Future.delayed(Duration(seconds: 2));
    var randomNumber = Random().nextInt(10);
    if (randomNumber % 2 == 0) {
      throw Exception('Even number generated!');
    }
    print('Data fetched successfully!');
  } on Exception catch (e) {
    print('Error fetching data: $e');
    // Don't rethrow unless additional higher-level handling is needed
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}

void main() async {
  await fetchData(); //No need for nested try-catch in main if fetchData handles it
  print('Program finished');
}
```