import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stajj/data/entity/Muzikler.dart';

class Detaysayfa extends StatefulWidget {
  final Muzikler Muziks;

  Detaysayfa({required this.Muziks});

  @override
  State<Detaysayfa> createState() => _DetaysayfaState();
}

class _DetaysayfaState extends State<Detaysayfa> {
  double ses = 24.32; // Başlangıç oynatma süresi
  double ses2 = 34.0; // Toplam süre

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1f1d2b),
      appBar: AppBar(
        title: Text(
          "Now Playing",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF1f1d2b),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "resimler/${widget.Muziks.resim}",
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Text(
                  "${widget.Muziks.Aciklama}",
                  style: TextStyle(color: Colors.white, fontFamily: "Black"),
                ),
              ),
              Text(
                "${widget.Muziks.ad}",
                style: TextStyle(color: Colors.white54, fontFamily: "Black"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "24:32",
                      style: TextStyle(color: Colors.white54),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Slider(
                        value: ses,
                        min: 0,
                        max: ses2,
                        onChanged: (value) {
                          setState(() {
                            ses = value;
                          });
                        },
                        activeColor: Colors.white,
                        inactiveColor: Colors.white54,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "34:00",
                      style: TextStyle(color: Colors.white54),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.skip_previous, color: Colors.white),
                    onPressed: () {

                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.play_circle_fill, color: Colors.white, size: 50),
                    onPressed: () {

                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.skip_next, color: Colors.white),
                    onPressed: () {

                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
