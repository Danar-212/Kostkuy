import 'package:flutter/material.dart';

class Tersimpan extends StatelessWidget {
  const Tersimpan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300], // Warna AppBar seperti di gambar
        title: const Text('Tersimpan'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman Beranda
          },
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.bookmark_border,
              size: 100,
              color: Colors.grey,
            ),
            SizedBox(height: 16),
            Text(
              'Belum ada kost yang disimpan',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aksi saat tombol ditekan
        },
        backgroundColor: Colors.blue, // Warna sesuai gambar
        child: const Icon(Icons.add),
      ),
    );
  }
}
