import 'package:catalog_f/pages/home_page.dart';
import 'package:catalog_f/pages/login_page.dart';
import 'package:catalog_f/utils/routes.dart';
import 'package:catalog_f/widgets/themes.dart';
import 'package:flutter/material.dart';

import 'pages/cart_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.cartRoute: (context) => const CartPage(),
      },
    );
  }
}
