import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testing/screen/about1_page.dart';
import 'package:testing/screen/about2_page.dart';
import 'package:testing/screen/about3_page.dart';
import 'package:testing/screen/breeding_page.dart';
import 'package:testing/screen/gender_page.dart';
import 'package:testing/screen/homepage.dart';
import 'package:testing/screen/info_page.dart';
import 'package:testing/screen/jenis_gridview.dart';
import 'package:testing/screen/makanan_page.dart';
import 'package:testing/screen/memandikan_perawatan.dart';
import 'package:testing/screen/penyakit_perawatan.dart';
import 'package:testing/screen/perawatan_page.dart';
import 'package:testing/screen/potongkuku_perawatan.dart';

void main() {
  runApp(MaterialApp(   
    title: "Musang Lovers",
    initialRoute: '/home',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        scaffoldBackgroundColor: Colors.grey[50]),
    routes: {
      '/home': (context) => HomePage(),
      '/food': (context) => MakananPage(),
      '/jenis': (context) => JenisPage(),
      '/gender': (context) => GenderPage(),
      '/breeding': (context) => BreedingPage(),
      //about page
      '/about1': (context) => About1(),
      '/about2': (context) => About2(),
      '/about3': (context) => About3(),
      '/infopage': (context) => InfoPage(),
      //perawatan page
      '/perawatan': (context) => PerawatanPage(),
      '/memandikan': (context) => MemandikanPerawatan(),
      '/potongkuku': (context) => PotongkukuPerawatan(),
      '/penyakit': (context) => PenyakitPerawatan(),
    },
  ));
}
