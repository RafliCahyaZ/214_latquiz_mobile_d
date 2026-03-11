import 'package:flutter/material.dart';
import 'home.dart';
import 'profile.dart';

class Root extends StatefulWidget {

  final String nama;

  const Root({super.key, required this.nama});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    final pages = [
      HomePage(nama: widget.nama),
      ProfilePage(nama: widget.nama),
    ];

    return Scaffold(

      body: pages[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: selectedIndex,

        onTap: (index){
          setState(() {
            selectedIndex = index;
          });
        },

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Beranda",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profil",
          ),

        ],
      ),
    );
  }
}