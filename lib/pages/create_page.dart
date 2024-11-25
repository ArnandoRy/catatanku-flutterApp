import 'package:catatanku/controller/catatan_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreatePage extends StatelessWidget {
  final CatatanController catatanC = Get.find();

  final TextEditingController judulController = TextEditingController();
  final TextEditingController detailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buat Catatan Baru"),
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

                catatanC.addCatatan(newJudul, newDetail);
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