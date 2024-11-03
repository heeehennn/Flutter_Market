import 'package:flutter/material.dart';
import 'add_product_screen.dart'; // Import layar AddProductScreen

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: 
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 5,
              ),
            ],
          ),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 25,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 5,
                ),
              ],
            ),
            child: IconButton(
              icon: const Icon(
                Icons.person,
                color: Colors.black,
                size: 25,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: ElevatedButton(
                onPressed: () {
                  // Navigasi ke AddProductScreen saat tombol Add Data ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddProductScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Add Data +'),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: DataTable(
                  columns: const [
                    DataColumn(label: Text('Foto')),
                    DataColumn(label: Text('Nama Produk')),
                    DataColumn(label: Text('Harga')),
                    DataColumn(label: Text('Aksi')),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(
                          Image.asset(
                            'images/burgerr.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                        const DataCell(Text('Burger')),
                        const DataCell(Text('Rp.25,000.00')),
                        DataCell(
                          IconButton(
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              // Aksi hapus
                            },
                          ),
                        ),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(
                          Image.asset(
                            'images/boba.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                        const DataCell(Text('Boba')),
                        const DataCell(Text('Rp.10,000.00')),
                        DataCell(
                          IconButton(
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              // Aksi hapus
                            },
                          ),
                        ),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(
                          Image.asset(
                            'images/burgerr.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                        const DataCell(Text('Burger')),
                        const DataCell(Text('Rp.25,000.00')),
                        DataCell(
                          IconButton(
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              // Aksi hapus
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}