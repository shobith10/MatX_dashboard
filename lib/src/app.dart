import 'package:dashboard_application/src/components/styles/colors.dart';
import 'package:dashboard_application/src/dashboard/view/dashboard_view.dart';
import 'package:dashboard_application/src/login/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: rootScaffoldMessengerKey,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: primaryColor,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute<void>(
            settings: routeSettings,
            builder: (BuildContext context) {
              switch (routeSettings.name) {
                case LoginView.routeName:
                  return const LoginView();
                case DashBoardView.routeName:
                  return const DashBoardView();
                default:
                  return const LoginView();
              }
            });
      },
    );
  }
}
