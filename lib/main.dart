import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:meow_meow_app/components/login-compoent/login_screen.dart';
import 'package:meow_meow_app/components/register-compoent/register_screen.dart';
import 'package:meow_meow_app/components/splash-compoent/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(),
      home: LoginScreen(),
      // home: RegisterScreen(),
    );
  }
}