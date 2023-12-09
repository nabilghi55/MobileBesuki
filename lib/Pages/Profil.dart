import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  @override
  _Profilstate createState() => _Profilstate();
}

class _Profilstate extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
         
          body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            Image.asset("assets/images/kantorDesa.jpg"),
            SizedBox(
              height: 20,
            ),
            Text(
              "PROFIL DESA BESUKI",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Desa Besuki terletak di belahan selatan kantor Kecamatan Besuki. Desa Besuki memiliki wilayah dengan luas 811.175 ha. Jumlah penduduk Desa Besuki di tahun 2013 berjumlah 4.258 jiwa , terdiri dari laki-laki 2.134 jiwa dan perempuan 2.124.Jumlah penduduk Desa Besuki di tahun 2013 berjumlah 4.258 jiwa , terdiri dari laki-laki 2.134 jiwa dan perempuan 2.124. Usia penduduk Desa Besuki umur 0-12 bulan 34 orang, 1-10 tahun 218 orang, 11-20 tahun 271orang, 21-30 tahun 317 orang, 31-40 tahun 351 orang, usia 41-50 tahun 500 orang, 51-58 tahun 279 orang dan yang umurnya lebih dari 58 tahun 837 orang. Untuk jumlah perubahan penduduk desa besuki sampai bulan Nopember 2013 yaitu : Jumlah kelahiran 38 jiwa, kematian 34 jiwa dan perpindahan penduduk 41 jiwa.",
                style: TextStyle(
                    fontFamily: "Manrope",
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "SEJARAH DESA BESUKI",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Desa Besuki memiliki sejarah dan latar belakang tersendiri yang merupakan pencerminan dari karakter dan pencirian khas tertentu dari suatu daerah. Sejarah desa seringkali tertuang dalam dongeng-dongeng yang diwariskan secara turun temurun dari mulut ke mulut sehingga sulit untuk dibuktikan secara fakta. Dan tidak jarang dongeng tersebut dihubungkan dengan mitos tempat-tempat tertentu yang dianggap keramat. Dalam hal ini Desa Besuki juga memiliki hal tersebut yang merupakan identitas dari desa ini yang akan kami tuangkan sebuah legenda. Sejarah Desa Besuki pada jaman dulu mempunyai cerita yang unik, diantaranya Desa Besuki yang dahulunya hutan dan rawa yang di situ banyak ikan di wilayah tersebut. Maka asal-usul Desa Besuki sehingga tertulis Besuki adalah dari kata bahasa Jawa NGEMBES DI SUSUKI. Yang dimaksud  dengan Susuki adalah alat untuk mencari ikan di rawa yang namanya susuk. Sehingga terjadilah nama desa Besuki sampai sekarang.",
                style: TextStyle(
                    fontFamily: "Manrope",
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        )),
      )),
    );
  }
}
