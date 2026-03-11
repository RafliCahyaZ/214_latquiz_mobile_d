import 'package:flutter/material.dart';
import 'models/data.dart';

class DetailPage extends StatelessWidget {

  final int productIndex;

  const DetailPage({super.key, required this.productIndex});

  @override
  Widget build(BuildContext context) {

    final product = products[productIndex];

    return Scaffold(

      appBar: AppBar(
        title: const Text("Detail Produk"),
      ),

      body: SingleChildScrollView(

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Image.network(
              product.image,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: const EdgeInsets.all(16),

              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    "Rp ${product.price}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text("Kategori: ${product.category}"),

                  const SizedBox(height: 20),

                  const Text(
                    "Deskripsi:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(product.description),

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}