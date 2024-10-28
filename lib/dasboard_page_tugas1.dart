import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.green[700], // Mengubah warna AppBar
      ),
      body: Container(
        padding: EdgeInsets.all(16.0), // Menambahkan padding di sekitar DataTable
        color: Colors.green[50], // Mengganti warna latar belakang
        child: SingleChildScrollView( // Memungkinkan scroll jika data terlalu banyak
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Daftar Penjualan',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16), // Jarak antara judul dan tabel
              DataTable(
                columns: [
                  DataColumn(
                    label: Container(
                      padding: EdgeInsets.all(8.0),
                      color: Colors.green[300], // Warna latar belakang header
                      child: Text('No Faktur', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  DataColumn(
                    label: Container(
                      padding: EdgeInsets.all(8.0),
                      color: Colors.green[300], // Warna latar belakang header
                      child: Text('Tanggal Penjualan', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  DataColumn(
                    label: Container(
                      padding: EdgeInsets.all(8.0),
                      color: Colors.green[300], // Warna latar belakang header
                      child: Text('Nama Customer', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  DataColumn(
                    label: Container(
                      padding: EdgeInsets.all(8.0),
                      color: Colors.green[300], // Warna latar belakang header
                      child: Text('Jumlah Barang', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  DataColumn(
                    label: Container(
                      padding: EdgeInsets.all(8.0),
                      color: Colors.green[300], // Warna latar belakang header
                      child: Text('Total Penjualan', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  DataColumn(
                    label: Container(
                      padding: EdgeInsets.all(8.0),
                      color: Colors.green[300], // Warna latar belakang header
                      child: Text('Aksi', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('F001')),
                    DataCell(Text('2023-10-21')),
                    DataCell(Text('John Doe')),
                    DataCell(Text('5')),
                    DataCell(Text('Rp 500.000')),
                    DataCell(
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
                    ),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('F002')),
                    DataCell(Text('2023-10-22')),
                    DataCell(Text('Jane Smith')),
                    DataCell(Text('3')),
                    DataCell(Text('Rp 300.000')),
                    DataCell(
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
                    ),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('F003')),
                    DataCell(Text('2023-10-23')),
                    DataCell(Text('Bob Lee')),
                    DataCell(Text('2')),
                    DataCell(Text('Rp 200.000')),
                    DataCell(
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
                    ),
                  ]),
                  // Anda bisa menambahkan lebih banyak DataRow di sini
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}