import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  int _selectedIndex = 0;

  // Fungsi untuk menangani klik pada item BottomNavigationBar
  void _onItemTapped(int index) {
    if (index == 2) {
      // Navigasi ke halaman Tersimpan saat tab Saved diklik
      Navigator.pushNamed(context, '/tersimpan');
    } else {
      // Mengubah state untuk tab Home atau Profile
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kost Danar'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Bar
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search places',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Placeholder untuk List Kost
            const Expanded(
              child: Center(
                child: Text(
                  'Daftar Kost akan muncul di sini.',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Menunjukkan tab yang aktif
        onTap: _onItemTapped, // Panggil fungsi saat item diklik
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage('assets/profile_placeholder.png'),
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark), // Tab Saved
            label: 'Saved',
          ),
        ],
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
