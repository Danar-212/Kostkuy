import 'package:flutter/material.dart';
import 'package:kostdaanr/screen/beranda.dart';
import 'package:kostdaanr/screen/tersimpan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kost Kuyy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Halaman awal
      routes: {
        '/': (context) => const Beranda(),
        '/tersimpan': (context) => const Tersimpan(),
      },
    );
  }
}
