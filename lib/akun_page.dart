//akun_page.dart

import 'package:flutter/material.dart';

class AkunPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akun'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage(
                  'assets/profile_picture.png'), // Ganti dengan path gambar Anda
            ),
            SizedBox(height: 20.0),
            Text(
              'Nama Pengguna',
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'email@example.com',
              style: TextStyle(fontSize: 16.0, color: Colors.grey),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Aksi untuk logout
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
