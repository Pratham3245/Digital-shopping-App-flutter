import 'package:velocity_x/velocity_x.dart';

import 'package:myapplicationone/models/cart_List.dart';
import 'package:myapplicationone/models/catalog.dart';

class MyStore extends VxStore {
  late CatalogModel catalog;
  late CartModel cart;

  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
