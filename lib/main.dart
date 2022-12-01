import 'package:dashboard_application/src/app.dart';
import 'package:dashboard_application/src/dashboard/dashboard_controller.dart';
import 'package:dashboard_application/src/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  GoogleFonts.config.allowRuntimeFetching = false;
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => LoginContoller()),
    ChangeNotifierProvider(create: (_) => DashBoardController()),
  ], child: const MyApp()));
}
