import 'package:flutter/material.dart';
import 'package:projek_sdm/dasboard.dart';
import 'package:projek_sdm/dasboard_profile.dart';
import 'package:projek_sdm/login_page.dart';
import 'package:projek_sdm/detail_kegiatan.dart';
import 'package:projek_sdm/penilaian.dart';
import 'package:projek_sdm/poin.dart';
import 'package:projek_sdm/surat_tugas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        '/login_page': (context) => LoginPage(),
        '/dashboard': (context) => Dashboard(),
        '/profile': (context) => DasboardProfile(),
        '/detail': (context) => DetailKegiatan(),
        '/penilaian': (context) => Penilaian(),
        '/poin': (context) => Poin(),
        '/surat': (context) => SuratTugas(),
      },
    );
  }
}
