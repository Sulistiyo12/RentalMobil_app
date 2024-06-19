import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rental_mobil_app/host.dart';
import 'pemesanan_page.dart';
import 'akun_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    MainPage(),
    PemesananPage(),
    // Tambahkan halaman lainnya di sin
    Host(),
    AkunPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple, // Warna ungu untuk AppBar
      ),
      home: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'PEMESANAN',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.directions_car),
              label: 'HOST',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'AKUN',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  final List<String> imgList = [
    'https://via.placeholder.com/600x300.png?text=Promo+1',
    'https://via.placeholder.com/600x300.png?text=Promo+2',
    'https://via.placeholder.com/600x300.png?text=Promo+3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple, // Warna ungu untuk AppBar
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Pesan mobil di Cira',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildMenuItem(Icons.directions_car, 'Pesan mobil'),
                  _buildMenuItem(Icons.car_rental, 'Daftarkan mobilmu'),
                  _buildMenuItem(Icons.local_offer, 'Promosi'),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'Cek promo yang pas buatmu',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                items: imgList
                    .map((item) => Container(
                          child: Center(
                              child: Image.network(item,
                                  fit: BoxFit.cover, width: 1000)),
                        ))
                    .toList(),
              ),
              SizedBox(height: 20.0),
              Text(
                'Kota utama',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              _buildCityCard('Jakarta',
                  'https://via.placeholder.com/600x300.png?text=Jakarta'),
              _buildCityCard(
                  'Bali', 'https://via.placeholder.com/600x300.png?text=Bali'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.purple,
          radius: 30.0,
          child: Icon(icon, color: Colors.white, size: 30.0),
        ),
        SizedBox(height: 10.0),
        Text(label, style: TextStyle(fontSize: 14.0)),
      ],
    );
  }

  Widget _buildCityCard(String cityName, String imageUrl) {
    return Card(
      margin: EdgeInsets.only(bottom: 10.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.network(imageUrl,
              fit: BoxFit.cover, width: double.infinity, height: 150.0),
          Container(
            width: double.infinity,
            height: 150.0,
            color: Colors.black.withOpacity(0.5),
          ),
          Text(
            cityName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
