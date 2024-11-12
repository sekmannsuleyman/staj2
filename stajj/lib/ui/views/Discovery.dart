import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stajj/ui/views/Sarkilar.dart';

class Discovery extends StatefulWidget {
  const Discovery({super.key});

  @override
  State<Discovery> createState() => _DiscoveryState();
}

class _DiscoveryState extends State<Discovery> {
  int secilenIndeks =0;
  var sayfalar= [const Sarkilar()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.filter_list,color: Colors.white,),
          onPressed: () {
            Navigator.pop(context); // Geri gitmek için
          },
        ),
        actions: [
          IconButton(onPressed:(){} ,
              icon: const Icon(Icons.notification_add_sharp),color: Colors.white ,),



        ],
        backgroundColor: Color(0xFF1f1d2b),

        title: const Text("Podkes",style: TextStyle(fontFamily: "Black",
            fontWeight: FontWeight.bold,

            fontSize: 25,
            color: Colors.white),),
        centerTitle: true,


      ),
      body: sayfalar[secilenIndeks],
      backgroundColor: Color(0xFF1f1d2b) ,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF1f1d2b) ,
          items: const[

            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Discover",),
            BottomNavigationBarItem(icon: Icon(Icons.video_library_sharp),label: "Library"),
            BottomNavigationBarItem(icon: Icon(Icons.account_box_rounded),label: "Profiler"),

          ],
        selectedItemColor: Colors.white, // Seçili öğe beyaz
        unselectedItemColor: Colors.white, // Seçili olmayan öğeler beyaz
         currentIndex: secilenIndeks,





      ),









    );
  }
}
