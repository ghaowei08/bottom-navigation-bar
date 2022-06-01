import 'package:alpaca_trading/screen/screen1_screen.dart';
import 'package:alpaca_trading/screen/screen2_screen.dart';
import 'package:alpaca_trading/screen/screen3_screen.dart';
import 'package:alpaca_trading/screen/screen4_screen.dart';
import 'package:alpaca_trading/screen/screen5_screen.dart';
import 'package:flutter/material.dart';

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
