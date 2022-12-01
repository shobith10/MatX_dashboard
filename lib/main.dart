import 'package:dashboard_application/src/app.dart';
import 'package:dashboard_application/src/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => LoginContoller()),
  ], child: const MyApp()));
}
