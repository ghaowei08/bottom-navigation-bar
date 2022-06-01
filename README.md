## Flutter Bottom Navigation Bar with Provider

Using Provider to control bottom navigation bar and screen switching.

## Installation

Use the package manager [provider](https://pub.dev/packages/provider) to install.

```bash
flutter pub get provider
```

## Usage

```dart
import foobar

# main.dart
void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => NavigatorProvider(),
      ),
    ],
    child: MyApp(),
  ));
}

# navigator_provider.dart
class NavigatorProvider with ChangeNotifier {
  int _currentIndex = 0;

  List<Widget> screen = [
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4(),
    Screen5(),
  ];

  int get currentIndex => _currentIndex;
  Widget get currentScreen => screen[currentIndex];

  void updateIndex(index) {
    _currentIndex = index;
    notifyListeners();
  }
}


```

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
