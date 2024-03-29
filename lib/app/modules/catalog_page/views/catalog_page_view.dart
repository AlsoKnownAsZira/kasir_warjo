import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kasir_warjo/app/widgets/custom_navigation_bar.dart';
import '../controllers/catalog_page_controller.dart';
import '../../../widgets/catalog_grid.dart';

class CatalogPageView extends GetView<CatalogPageController> {
  const CatalogPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final items = [
      CatalogItem(
          image: 'https://asset.kompas.com/crops/yoovaRyPxaPFOY4gfCciore2eUY=/3x0:700x465/750x500/data/photo/2020/12/30/5fec5602f116e.jpg',
          title: "Ayam Bakar Madu",
          price: 50000,
          category: Category.makanan,
          description: "Fugiat laborum culpa est laborum nulla consequat. Nostrud nisi sit incididunt voluptate proident aliqua. Proident veniam magna ex irure eu fugiat. Ad Lorem voluptate eiusmod nisi mollit esse voluptate quis eu in veniam cillum voluptate sunt. Reprehenderit magna ut labore qui occaecat dolor aliquip culpa."
          ),
      CatalogItem(
          image: 'https://awsimages.detik.net.id/community/media/visual/2021/08/13/bebek-arjuna.jpeg?w=1280',
          title: "Bebek Bakar Warjo",
          price: 85000,
          category: Category.makanan,
            description: "Fugiat laborum culpa est laborum nulla consequat. Nostrud nisi sit incididunt voluptate proident aliqua. Proident veniam magna ex irure eu fugiat. Ad Lorem voluptate eiusmod nisi mollit esse voluptate quis eu in veniam cillum voluptate sunt. Reprehenderit magna ut labore qui occaecat dolor aliquip culpa."
        
          ),
      CatalogItem(
          image: 'https://awsimages.detik.net.id/community/media/visual/2022/04/20/resep-gurame-bakar-bumbu-kecap-cabe.jpeg?w=1200',
          title: "Gurame Bakar Warjo",
          price: 85000,
          category: Category.makanan,
            description: "Fugiat laborum culpa est laborum nulla consequat. Nostrud nisi sit incididunt voluptate proident aliqua. Proident veniam magna ex irure eu fugiat. Ad Lorem voluptate eiusmod nisi mollit esse voluptate quis eu in veniam cillum voluptate sunt. Reprehenderit magna ut labore qui occaecat dolor aliquip culpa."
        
          ),
      CatalogItem(
          image: 'https://cdn1-production-images-kly.akamaized.net/vsRQRALmIRfW34P7r5VoFM8s1kA=/500x281/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3114885/original/040302400_1588127382-es-kelapa-muda.jpg',
          title: "Es Degan Ijo",
          price: 20000,
          category: Category.minuman,
            description: "Fugiat laborum culpa est laborum nulla consequat. Nostrud nisi sit incididunt voluptate proident aliqua. Proident veniam magna ex irure eu fugiat. Ad Lorem voluptate eiusmod nisi mollit esse voluptate quis eu in veniam cillum voluptate sunt. Reprehenderit magna ut labore qui occaecat dolor aliquip culpa."
        ),
      CatalogItem(
          image: 'https://ik.imagekit.io/dcjlghyytp1/2020/06/gendut_kulineran.jpg?tr=f-auto',
          title: "Es Campur",
          price: 25000,
          category: Category.minuman,
            description: "Fugiat laborum culpa est laborum nulla consequat. Nostrud nisi sit incididunt voluptate proident aliqua. Proident veniam magna ex irure eu fugiat. Ad Lorem voluptate eiusmod nisi mollit esse voluptate quis eu in veniam cillum voluptate sunt. Reprehenderit magna ut labore qui occaecat dolor aliquip culpa."
        
          ),
      CatalogItem(
          image: 'https://assets-pergikuliner.com/yKAR6rk9uBAKE2NRSaqH5G2Nhpg=/fit-in/1366x768/smart/filters:no_upscale()/https://assets-pergikuliner.com/uploads/bootsy/image/22123/Spicy_Chicken_Wings__jehancancook.com_.jpg',
          title: "Chicken Wings",
          price: 85000,
          category: Category.makanan,
            description: "Fugiat laborum culpa est laborum nulla consequat. Nostrud nisi sit incididunt voluptate proident aliqua. Proident veniam magna ex irure eu fugiat. Ad Lorem voluptate eiusmod nisi mollit esse voluptate quis eu in veniam cillum voluptate sunt. Reprehenderit magna ut labore qui occaecat dolor aliquip culpa."
        
          ),
      CatalogItem(
          image: 'https://asset.kompas.com/crops/vX_ULbw0h4h-CclfUmCXhfjxwTU=/0x0:880x587/750x500/data/photo/2023/08/16/64dc53ca9f3db.jpg',
          title: "Es Teh Manis",
          price: 10000,
          category: Category.minuman,
            description: "Fugiat laborum culpa est laborum nulla consequat. Nostrud nisi sit incididunt voluptate proident aliqua. Proident veniam magna ex irure eu fugiat. Ad Lorem voluptate eiusmod nisi mollit esse voluptate quis eu in veniam cillum voluptate sunt. Reprehenderit magna ut labore qui occaecat dolor aliquip culpa."
        
          ),

    ];
    return Scaffold(
        appBar: AppBar(
        
          backgroundColor: Colors.white,
          toolbarHeight: 100,
          actions: [
           
          ],
          leading: Container(
         
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('lib/assets/images/warjo.png'),fit: BoxFit.cover)
            ),
          ) ,
          centerTitle: false,

        ),
        bottomNavigationBar: CustomNavigationBar(
          initialActiveIndex: 1,
        ),
        body: CatalogGrid(items: items));
  }
}
