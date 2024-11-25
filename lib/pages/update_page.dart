import 'package:catatanku/controller/catatan_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdatePage extends StatelessWidget {
  final int index;
  final Map<String, dynamic> updateData;

  UpdatePage({required this.index, required this.updateData});
  final CatatanController catatanC = Get.find();

  final TextEditingController judulController = TextEditingController();
  final TextEditingController detailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    judulController.text = updateData['judul'] ?? '';
    detailController.text = updateData['detail'] ?? '';
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Catatan"),
        backgroundColor: Colors.amber[200],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: judulController,
              decoration: InputDecoration(labelText: 'Judul'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: detailController,
              maxLines: 7,
              decoration: InputDecoration(
                labelText: 'Catatan',
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final newJudul = judulController.text.trim();
                final newDetail = detailController.text.trim();

                catatanC.updateCatatan(index, newJudul, newDetail);
                Get.back();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber[200],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              child: Text("Simpan"),
            ),
          ],
        ),
      )),
    );
  }
}
