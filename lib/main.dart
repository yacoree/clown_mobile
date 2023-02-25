import 'package:flutter/material.dart';
import 'package:clown_mobile/homePage.dart';
import 'registrationPage.dart';
import 'authPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyThemeApp());
}

class MyThemeApp extends StatelessWidget {
  const MyThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthPage(),
        '/registrationPage': (context) => const RegistrationPage(),
        '/homePage': (context) => const HomePage(),
      },
    );
  }
}
