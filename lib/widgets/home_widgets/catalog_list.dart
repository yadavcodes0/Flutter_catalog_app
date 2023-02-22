import 'package:catalog_f/models/catalog.dart';
import 'package:catalog_f/pages/home_detail_page.dart';
import 'package:flutter/material.dart';
import 'catalog_item.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.getByPosition(index);
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailPage(catalog: catalog),
            ),
          ),
          child: Hero(
            tag: Key(
              catalog.id.toString(),
            ),
            child: CatalogItem(catalog: catalog),
          ),
        );
      },
    );
  }
}
