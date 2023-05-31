import 'package:flutter/foundation.dart';

class Utils {
  static void printDebugMode(Object? object) {
    if (kDebugMode) {
      print(object);
    }
  }
}
