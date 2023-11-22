import 'package:flutter/material.dart';
import 'package:medicine_stock/models/product.dart';
import 'package:medicine_stock/widgets/left_drawer.dart';

class MedicineDetail extends StatelessWidget {
  final Product item;

  const MedicineDetail(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Obat',
        ),
      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text("Amount ${item.fields.amount}"),
            const SizedBox(height: 20),
            Text("Description: ${item.fields.description}"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
