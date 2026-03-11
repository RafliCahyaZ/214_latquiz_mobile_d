import 'package:flutter/material.dart';
import 'detail.dart';
import 'models/data.dart';

class HomePage extends StatelessWidget {

  final String nama;

  const HomePage({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Halo, $nama"),
        backgroundColor: Colors.blue,
      ),

      body: ListView.builder(

        itemCount: products.length,

        itemBuilder: (context,index){

          return Card(

            margin: const EdgeInsets.all(10),

            child: ListTile(

              leading: Image.network(
                products[index].image,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),

              title: Text(products[index].name),

              subtitle: Text("Rp ${products[index].price}"),

              trailing: const Icon(Icons.arrow_forward_ios),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(productIndex: index),
                  ),
                );
              },

            ),
          );
        },
      ),
    );
  }
}