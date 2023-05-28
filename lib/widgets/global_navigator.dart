import 'package:food_fight/main.dart';

class GlobalNavigator {
  static pop() {
    navigatorKey.currentState?.pop();
  }

  static popUntil(String routeName) {
    navigatorKey.currentState?.popUntil((route) {
      return route.settings.name == routeName;
    });
  }
}
