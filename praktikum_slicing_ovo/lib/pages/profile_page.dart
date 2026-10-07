import 'package:flutter/material.dart';
import '../widgets/menu_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Widget _judulSection(String teks) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 8),
      child: Text(
        teks,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 64, 16, 24),
        children: [
          const Text(
            'Profile',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xFFE0E0E0)),
            ),
            child: const Row(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Color(0xFFD9CFFA),
                  child: Icon(Icons.person, color: Color(0xFFD9CFFA)),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Zhafir akbar abqary',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text('08xx-xxxx-xxxx'),
                    ],
                  ),
                ),
                Text(
                  'Ubah',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xFFE0E0E0)),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.view_week, size: 32),
                SizedBox(width: 12),
                Text(
                  'Loyalty Code',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          _judulSection('Akun'),
          const MenuTile(
            icon: Icons.radio_button_checked,
            judul: 'OVO Premier',
            tombolText: 'Upgrade',
          ),
          const MenuTile(icon: Icons.paid, judul: 'OVO Points'),
          const MenuTile(icon: Icons.stars, judul: 'OVO Stamp'),
          const MenuTile(
            icon: Icons.link,
            judul: 'Aplikasi Terhubung',
            badge: 'NEW',
          ),

          _judulSection('Bantuan'),
          const MenuTile(icon: Icons.help, judul: 'Pusat Bantuan'),

          _judulSection('Keamanan'),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
