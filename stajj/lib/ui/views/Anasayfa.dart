import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stajj/ui/views/Discovery.dart';
import 'package:stajj/ui/views/Sarkilar.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi=MediaQuery.of(context);
    final double ekranYuksekligi=ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("ekran yuksekligi : $ekranYuksekligi");
    print("ekran genisligi : $ekranGenisligi");

    return Scaffold(
      backgroundColor: Color(0xFF1f1d2b),

      body: Center(

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:100),
              child: Image.asset("resimler/resimm.jpg",width: ekranGenisligi/2,),
            ),
         const Padding(
           padding: EdgeInsets.only(top: 20.0),
           child: Text("Süleyman Sekman",style: TextStyle(fontSize: 30 ,color:Colors.white,fontWeight: FontWeight.bold)),
         ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text("Bilgisayar Mühendisliği bölümü 4. sınıf öğrencisiyim ve eğitimimin son yılına yaklaşırken,4 aylık uzun dönem staj yapmayı hedeflemekteyim.",
                style:TextStyle(
                    fontSize:ekranGenisligi/20,
                    fontFamily: "Roboto",
                    color: Color(0xFFafaeb0) ),
                textAlign: TextAlign.center, ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom:70),
              child: Image.asset("resimler/nokta.png",width: ekranGenisligi/2,),
            ),

            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const  Discovery()));
              },
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                ),
                child: const Center(
                  child: Icon(Icons.arrow_forward, color: Colors.black), // Ok işareti
                ),
              ),
            )
          ],
          ),
      ),




















    );
  }
}
