import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int days = 30;
  final String name = "Codepur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Catalog App"),
      ),
      body: Center(
        child: Text("Welcome to $days of flutter by $name"),
      ),
      drawer: const MyDrawer(),
    );
  }
}
