import 'package:flutter/material.dart';

class Host extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Rental App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Rental App'),
      ),
      body: Column(
        children: [
          // Title
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Tahukah Anda?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          // Description
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '90% dari masa pakai mobil dihabiskan untuk diparkir.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          // Car Image
          Image.asset('assets/car.png'),
          // Info Button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              child: Text('Info'),
              onPressed: () {
                // Show info dialog
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Info'),
                      content: Text(
                        'Anda hanya dapat menyewakan mobil Anda setelah profil Anda lolos tahapan verifikasi.',
                      ),
                    );
                  },
                );
              },
            ),
          ),
          // Rent Car Button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              child: Text('SEWAKAN MOBIL SAYA'),
              onPressed: () {
                // Show rent car dialog
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Rent Car'),
                      content: Text(
                        'Fitur ini akan segera tersedia.',
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Host',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
