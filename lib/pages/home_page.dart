import 'package:catalog_f/models/catalog.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  final dummyList = List.generate(20, (index) => CatalogModel.items[0]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
