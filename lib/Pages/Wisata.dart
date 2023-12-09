import 'package:flutter/material.dart';

class Wisata extends StatefulWidget {
  @override
  _WisataState createState() => _WisataState();
}

class _WisataState extends State<Wisata> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
         appBar: AppBar(
              backgroundColor: Color(
                0xFF01BB8A,
              ),
              title: Center(
                child: Text(
                  "WISATA BESUKI",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/kantorDesa.jpg",
                fit: BoxFit.cover,
              ),

              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Wisata Desa Besuki",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )
              // You can add more widgets here if needed
            ],
          ),
        ),
      ),
    );
  }
}
