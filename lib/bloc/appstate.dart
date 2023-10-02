import 'package:flutter/material.dart';

class AppStateTest extends ChangeNotifier {
  String currentTileVal;
  String currentButtonVal;

  AppStateTest({this.currentTileVal = '', this.currentButtonVal = ''});

  String getCurrentTileVal() {
    return currentTileVal;
  }

  void setCurrentTileVal(String value) {
    currentTileVal = value;
    notifyListeners();
  }

  String getCurrentButtonVal() {
    return currentButtonVal;
  }

  void setCurrentButtonVal(String value) {
    currentButtonVal = value;
    notifyListeners();
  }
}

class AppStatePTest extends ChangeNotifier {
  String _currentTileVal = '';
  String _currentButtonVal = '';

  AppStatePTest(String currentTile, String currentButton) {
    _currentTileVal = currentTile;
    _currentButtonVal = currentButton;
  }

  String get currentTileVal => _currentTileVal;

  String get currentButtonVal => _currentButtonVal;

  void setCurrentTileVal(String value) {
    _currentTileVal = value;
    notifyListeners();
  }

  void setCurrentButtonVal(String value) {
    _currentButtonVal = value;
    notifyListeners();
  }
}

class AppState extends ChangeNotifier {
  String _currentTileVal = '';
  String _currentButtonVal = '';

  String get currentTileVal => _currentTileVal;

  void setCurrentTileVal(String value) {
    _currentTileVal = value;
    notifyListeners();
  }

  String get currentButtonVal => _currentButtonVal;

  void setCurrentButtonVal(String value) {
    _currentButtonVal = value;
    notifyListeners();
  }
}
