import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/Wisata.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 500,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFF9FAAE),
                      Color(0xFFA4DC79),
                      Color(0xFF6AC58C),
                      Color(0xFF3EAA8C),
                      Color(0xFF17594B),
                    ],
                    stops: [0.0, 0.1927, 0.375, 0.5625, 1.0],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Image.asset(
                      'assets/images/peta_besuki.png',
                      height: 300,
                      width: 500,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Pasar Besuki",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.0, right: 16.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Memperkuat UMKM dan Pesona Desa Besuki Tulungagung",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Poppins", color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Wisata Desa Besuki",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Manrope"),
                ),
              ),
              Container(
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 16),
                    PhotoCard(
                      title: "Pantai Midodaren",
                      imagePath: "assets/images/kantorDesa.jpg",
                    ),
                    PhotoCard(
                      title: "Villa Midodaren",
                      imagePath: "assets/images/villamidodaren.jpg",
                    ),
                    PhotoCard(
                      title: "Pantai Niyama",
                      imagePath: "assets/images/pantainiyama.jpeg",
                    ),
                    PhotoCard(
                      title: "Tebing Banyu Mulok",
                      imagePath: "assets/images/tebingbanyu.webp",
                    ),
                    // Add more PhotoCard widgets as needed
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: Text("Lihat Lainnya"),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Wisata()));
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "UMKM Desa besuki",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Manrope"),
                ),
              ),
              Container(
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 16),
                    PhotoCard(
                      title: "Photo 1",
                      imagePath: "assets/images/kantorDesa.jpg",
                    ),
                    PhotoCard(
                      title: "Photo 2",
                      imagePath: "assets/images/img_login.png",
                    ),
                    PhotoCard(
                      title: "Photo 2",
                      imagePath: "assets/images/img_login.png",
                    ),
                    PhotoCard(
                      title: "Photo 2",
                      imagePath: "assets/images/img_login.png",
                    ),
                    SizedBox(height: 20,)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PhotoCard extends StatelessWidget {
  final String title;
  final String imagePath;

  PhotoCard({
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius:
                  BorderRadius.only(topLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),               child: Image.asset(
                imagePath,
                width: 200,
                height: 200.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF01BB8A),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0.0),
                topRight: Radius.circular(0.0),
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
            width: 200,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 5.0),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
