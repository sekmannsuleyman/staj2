import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stajj/data/entity/Muzikler.dart';
import 'package:stajj/ui/views/detaySayfa.dart';

class Sarkilar extends StatefulWidget {
  const Sarkilar({super.key});

  @override
  State<Sarkilar> createState() => _SarkilarState();
}

class _SarkilarState extends State<Sarkilar> {
  Future<List<Muzikler>>muzikleriYukle() async {
   var muziklerListesi=<Muzikler>[];
   var f1 = Muzikler(id: 1, ad: "Claire Malone", resim: "Album.png", Aciklama: "The missing 96 percent of the universe");
   var f2 = Muzikler(id: 2, ad: " Abumenyang", resim: "b.png", Aciklama: "How Dolly Parton led me to an epiphany ");
   var f3 = Muzikler(id: 3, ad: " Tir MCdohl", resim: "c.png", Aciklama: "The missing 96 percent of the universe");
   var f4 = Muzikler(id: 3, ad: " Denny Kulon", resim: "d.png", Aciklama: "Ngobam with Debby Cakhan");
   muziklerListesi.add(f1);
   muziklerListesi.add(f2);
   muziklerListesi.add(f3);
   muziklerListesi.add(f4);

    return muziklerListesi ;
  }
  @override
  Widget build(BuildContext context) {

    var ekranBilgisi=MediaQuery.of(context);
    final double ekranYuksekligi=ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("ekran yuksekligi : $ekranYuksekligi");
    print("ekran genisligi : $ekranGenisligi");

    return   Scaffold( appBar: AppBar(
         automaticallyImplyLeading: false,
         backgroundColor:  Color(0xFF1f1d2b),
           elevation: 0,
      title: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 350,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xFF252836),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search, color: Colors.grey[500]),
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),


          ],





        ),


      ),



    ),
        backgroundColor:Color(0xFF1f1d2b),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextButton(
                  onPressed: () {},
                  child: Text("All", style: TextStyle(fontSize: 20, color: Colors.white)),
                  style: TextButton.styleFrom(backgroundColor: Color(0xFF252836)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: TextButton(
                  onPressed: () {},
                  child: Text("Life", style: TextStyle(fontSize: 15, color: Colors.white)),
                  style: TextButton.styleFrom(backgroundColor: Color(0xFF252836)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: TextButton(
                  onPressed: () {},
                  child: Text("Comedy", style: TextStyle(fontSize:15, color: Colors.white)),
                  style: TextButton.styleFrom(backgroundColor: Color(0xFF252836)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: TextButton(
                  onPressed: () {},
                  child: Text("Tech", style: TextStyle(fontSize: 15, color: Colors.white)),
                  style: TextButton.styleFrom(backgroundColor: Color(0xFF252836)),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 16.0),
            child: Text("Trending", style: TextStyle(fontSize: 25, color: Colors.white)),
          ),
          Expanded(
            child: FutureBuilder<List<Muzikler>>(
              future: muzikleriYukle(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var muziklerListesi = snapshot.data;
                  return GridView.builder(
                    itemCount: muziklerListesi!.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.5,
                    ),
                    itemBuilder: (context, indeks) {
                      var Muziks = muziklerListesi[indeks];
                      return Container(
                        color: Color(0xFF1f1d2b),
                        child: GestureDetector(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder:(context)=> Detaysayfa(Muziks: Muziks) ));

                          } ,
                          child: Card(
                            color: Color(0xFF1f1d2b),
                            child: Column(
                              children: [
                                Image.asset("resimler/${Muziks.resim}"),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "${Muziks.Aciklama}",
                                    style: TextStyle(color: Colors.white, fontFamily: "Black"),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 6.0),
                                    child: Text(
                                      "${Muziks.ad}",
                                      style: TextStyle(color: Colors.white54, fontFamily: "Black"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ],
      ),




    );
  }
}
