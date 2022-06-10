import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:myapplicationone/core/store.dart';
import 'package:myapplicationone/models/cart_List.dart';
import 'package:myapplicationone/utils/routs.dart';
import 'package:myapplicationone/widgets/theme.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapplicationone/models/catalog.dart';
import '../models/catalog.dart';

import '../widgets/Home_widgets/catalof_header.dart';
import '../widgets/Home_widgets/catalog_list.dart';
import '../widgets/item.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModel.product =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
        backgroundColor: context.canvasColor,
        floatingActionButton: VxBuilder(
          mutations: {AddMutation, RemoveMutation},
          builder: (ctx, store, status) => FloatingActionButton(
            onPressed: () => Navigator.pushNamed(context, MyRouts.cart),
            backgroundColor: context.theme.buttonColor,
            child: Icon(
              CupertinoIcons.cart,
            ),
          ).badge(
              size: 20,
              color: MyTheme.creamcolor,
              count: _cart.items.length,
              textStyle:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.product != null &&
                    CatalogModel.product.isNotEmpty)
                  CatalogList().expand()
                else
                  Center(
                    child: CircularProgressIndicator().centered().expand(),
                  )
              ],
            ),
          ),
        ));
  }
}
