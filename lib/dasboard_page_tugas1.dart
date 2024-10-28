import 'package:flutter/material.dart';
import 'add_page_tugas1.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<Map<String, String>> salesData = [
    {
      'noFaktur': 'F001',
      'tanggal': '2023-10-21',
      'customer': 'John Doe',
      'jumlah': '5',
      'total': 'Rp 500.000',
    },
    {
      'noFaktur': 'F002',
      'tanggal': '2023-10-22',
      'customer': 'Jane Smith',
      'jumlah': '3',
      'total': 'Rp 300.000',
    },
    {
      'noFaktur': 'F003',
      'tanggal': '2023-10-23',
      'customer': 'Bob Lee',
      'jumlah': '2',
      'total': 'Rp 200.000',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.green[700],
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        color: Colors.green[50],
        child: ListView(
          children: [
            Text(
              'Daftar Penjualan',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            for (var sale in salesData)
              buildSalesCard(
                sale['noFaktur']!,
                sale['tanggal']!,
                sale['customer']!,
                sale['jumlah']!,
                sale['total']!,
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Navigasi ke AddPage dan tunggu data baru
          final newSale = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddPage()),
          );
          // Tambah data baru ke daftar penjualan jika ada
          if (newSale != null) {
            setState(() {
              salesData.add(newSale);
            });
          }
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green[700],
      ),
    );
  }

  Widget buildSalesCard(String noFaktur, String tanggal, String customer, String jumlah, String total) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('No Faktur: $noFaktur', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Tanggal Penjualan: $tanggal'),
            Text('Nama Customer: $customer'),
            Text('Jumlah Barang: $jumlah'),
            Text('Total Penjualan: $total'),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Detail Penjualan'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('No Faktur: $noFaktur'),
                            Text('Tanggal Penjualan: $tanggal'),
                            Text('Nama Customer: $customer'),
                            Text('Jumlah Barang: $jumlah'),
                            Text('Total Penjualan: $total'),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('Tutup'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text('Detail', style: TextStyle(color: Colors.green[700])),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit, color: Colors.blue),
                      onPressed: () {
                        // Logika untuk mengedit
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        // Logika untuk menghapus
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
