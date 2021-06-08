import 'package:flutter/material.dart';

class SecondPageNotifier extends ChangeNotifier with WidgetsBindingObserver {
  AppLifecycleState _state;

  AppLifecycleState get getState => _state;

  void initialize() {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  // アプリのライフサイクル変更時
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _state = state;

    print('state = $state');
    notifyListeners();
  }
}
