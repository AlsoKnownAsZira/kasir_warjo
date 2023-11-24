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
          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
          elevation: 1,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(item.image), fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text(
                  item.title,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Rp${item.price}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(
                thickness: 1,
                color: Colors.black,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text(
                  item.description,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ));
  }
}

  // Image.network(item.image),
          // Text('Title: ${item.title}'),
          // Text('Price: Rp${item.price}'),