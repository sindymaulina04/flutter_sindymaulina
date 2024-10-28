import 'package:flutter/material.dart';
import 'package:flutter_sindy/update_page_tugas1.dart';
import 'package:flutter_sindy/login_page_tugas1.dart';
import 'package:flutter_sindy/dasboard_page_tugas1.dart';
import 'package:flutter_sindy/add_page_tugas1.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 1',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Roboto', // Pastikan font ini ada di pubspec.yaml
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
        title: Text(
          'Management System Sindy Maulina - 714220018',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Colors.green[700],
        elevation: 4,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green[200]!, Colors.green[500]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            children: [
              _buildGridButton(context, 'Dashboard', Icons.dashboard, Colors.green[400]!, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardPage()),
                );
              }),
              _buildGridButton(context, 'Add', Icons.add, Colors.green[400]!, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddPage()),
                );
              }),
              _buildGridButton(context, 'Update', Icons.update, Colors.green[400]!, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UpdatePage(
                      faktur: 'F001',
                      tanggal: '2023-10-21',
                      customer: 'John Doe',
                      jumlah: '5',
                      total: 'Rp 500.000',
                    ),
                  ),
                );
              }),
              _buildGridButton(context, 'Logout', Icons.logout, Colors.green[400]!, () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridButton(BuildContext context, String label, IconData icon, Color color, VoidCallback onPressed) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.white,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(15),
        splashColor: Colors.green.withOpacity(0.5), // Efek splash saat disentuh
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(icon, size: 50, color: Colors.white), // Ukuran ikon diperbesar
                ),
              ),
              SizedBox(height: 10),
              Text(
                label,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}