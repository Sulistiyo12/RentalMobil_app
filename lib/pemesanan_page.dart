//pemesanan_page.dart

import 'package:flutter/material.dart';

class PemesananPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pemesanan'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Aktif'),
              Tab(text: 'Mendatang (0)'),
              Tab(text: 'Riwayat (0)'),
            ],
            indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: [
            _buildAktifTab(),
            _buildMendatangTab(),
            _buildRiwayatTab(),
          ],
        ),
      ),
    );
  }

  Widget _buildAktifTab() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/no_orders.png', height: 150.0),
          SizedBox(height: 20.0),
          Text(
            'Belum ada pemesanan',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          Text(
            'Saatnya untuk memulai perjalanan.',
            style: TextStyle(fontSize: 16.0, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildMendatangTab() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/no_orders.png', height: 150.0),
          SizedBox(height: 20.0),
          Text(
            'Belum ada pemesanan mendatang',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          Text(
            'Rencanakan perjalanan Anda berikutnya.',
            style: TextStyle(fontSize: 16.0, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildRiwayatTab() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/no_orders.png', height: 150.0),
          SizedBox(height: 20.0),
          Text(
            'Belum ada riwayat pemesanan',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          Text(
            'Mulai pesan dan lihat riwayat perjalanan Anda di sini.',
            style: TextStyle(fontSize: 16.0, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
