import 'package:catalog_f/models/catalog.dart';

class CartModel {
// catalog field
  late CatalogModel _catalog;

  // collection of Ids -store ids of eachitem
  final List<Item> _itemsIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    // ignore: unnecessary_null_comparison
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //get items in the cart

  List<Item> get items => _itemsIds
      .map(
        (id) => _catalog.getById(id as int),
      )
      .toList();

  //get total price

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //add item to the cart
  void add(Item item) {
    _itemsIds.add(item.id as Item);
  }

  //remove item from the cart
  void remove(Item item) {
    _itemsIds.remove(item.id as Item);
  }
}
