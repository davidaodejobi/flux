import 'package:flutter/widgets.dart';

enum Screens {
  home,
  connect,
  create,
  chat,
  map,
}

class AppProvider with ChangeNotifier {
  bool homeSwitch = true;
  bool connectSwitch = false;
  bool createSwitch = false;
  bool chatSwitch = false;
  bool mapSwitch = false;
  bool isPressed = false;

  pressed() {
    isPressed = true;
    notifyListeners();
  }

  unpressed() {
    isPressed = false;
    notifyListeners();
  }

  Widget? switchTab(Screens menuTab) {
    // check the selceted tab and set the screen accordingly
    switch (menuTab) {
      case Screens.home:
        homeSwitch = true;
        connectSwitch = false;
        createSwitch = false;
        chatSwitch = false;
        mapSwitch = false;
        notifyListeners();
        break;
      case Screens.connect:
        homeSwitch = false;
        connectSwitch = true;
        createSwitch = false;
        chatSwitch = false;
        mapSwitch = false;
        notifyListeners();
        break;
      case Screens.create:
        homeSwitch = false;
        connectSwitch = false;
        createSwitch = true;
        chatSwitch = false;
        mapSwitch = false;
        notifyListeners();
        break;
      case Screens.chat:
        homeSwitch = false;
        connectSwitch = false;
        createSwitch = false;
        chatSwitch = true;
        mapSwitch = false;
        notifyListeners();
        break;
      case Screens.map:
        homeSwitch = false;
        connectSwitch = false;
        createSwitch = false;
        chatSwitch = false;
        mapSwitch = true;
        notifyListeners();
        break;
    }
    return null;
  }
}
