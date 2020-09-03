import 'package:akudo_demo/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'util/dependency_injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setUpLocator();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(Home());
}




