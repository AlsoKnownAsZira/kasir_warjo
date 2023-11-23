import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/catalog_page_controller.dart';
import 'package:kasir_warjo/app/widgets/catalog_grid.dart';

class CatalogDetail extends GetView<CatalogPageController> {
  final CatalogItem item;

  CatalogDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: Column(
        children: <Widget>[
          Image.network(item.image),
          Text('Title: ${item.title}'),
          Text('Price: Rp${item.price}'),
        ],
      ),
    );
  }
}