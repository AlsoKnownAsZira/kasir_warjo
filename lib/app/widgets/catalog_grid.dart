import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kasir_warjo/app/modules/catalog_page/views/catalog_detail.dart';

class CatalogItem {
  final String image;
  final String title;
  final int price;
  final String description;
  CatalogItem({required this.image, required this.title, required this.price, required this.description});
}

class CatalogGrid extends StatelessWidget {
  final List<CatalogItem> items;

  CatalogGrid({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
           
               Get.to(() => CatalogDetail(item: items[index]));
           
            // Handle your tap event here
          },
          child: GridTile(
            footer: GridTileBar(
              backgroundColor: Colors.black54.withOpacity(0.3),
              title: Text(items[index].title),
              subtitle: Text('Rp${items[index].price}'),
            ),
            child: Image.network(
              items[index].image,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
