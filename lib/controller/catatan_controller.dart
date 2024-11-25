import 'package:get/get.dart';

class CatatanController extends GetxController {
  final catatan = <Map<String, dynamic>>[].obs;

  void addCatatan(String judul, String detail) {
    catatan.add({'judul': judul, 'detail': detail});
  }

  void deleteCatatan(int index) {
    catatan.removeAt(index);
  }

  void updateCatatan(int index, String judul, String detail) {
    catatan[index] = {'judul': judul, 'detail': detail};
    catatan.refresh();
  }
}
