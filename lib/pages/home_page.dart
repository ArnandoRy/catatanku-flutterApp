import 'package:catatanku/controller/catatan_controller.dart';
import 'package:catatanku/pages/update_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'create_page.dart';

class HomePage extends StatelessWidget {
  CatatanController catatanC = Get.put(CatatanController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catatanku"),
        backgroundColor: Colors.amber[200],
      ),
      body: Obx(() {
        return ListView.builder(
            itemCount: catatanC.catatan.length,
            itemBuilder: (context, index) {
              final addCatatan = catatanC.catatan[index];
              return Card(
                child: ListTile(
                  title: Text(addCatatan['judul'] ?? "Tanpa Judul"),
                  subtitle: Text(addCatatan['detail'] ?? 'Tanpa Detail'),
                  trailing: IconButton(
                    onPressed: () {
                      catatanC.deleteCatatan(index);
                    },
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                  onTap: () {
                    Get.to(
                        () => UpdatePage(index: index, updateData: addCatatan));
                  },
                ),
              );
            });
      }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber[200],
        onPressed: () =>
            // Navigator.of(context).push(
            //   MaterialPageRoute(builder: (builder) => CreatePages()),
            // );
            Get.to(CreatePage()),
        child: Icon(Icons.add),
      ),
    );
  }
}
