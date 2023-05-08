import 'dart:convert';

void main() {
  String jsonString1 =
      '{"nama": "Alghany", "jurusan": "Teknik", "angkatan": 2017}';
  String jsonString2 =
      '{"nama": "Ridha", "jurusan": "Teknik", "angkatan": 2018}';

  Mahasiswa m1 = Mahasiswa.fromJson(jsonString1);
  print("Mahasiswa 1 name: ${m1.nama}");
  print("Mahasiswa 1 jurusan: ${m1.jurusan}");
  print("Mahasiswa 1 angkatan: ${m1.angkatan}");

  Mahasiswa m2 = Mahasiswa.fromJson(jsonString2);
  print("Mahasiswa 2 name: ${m2.nama}");
  print("Mahasiswa 2 jurusan: ${m2.jurusan}");
  print("Mahasiswa 2 angkatan: ${m2.angkatan}");
}

class Mahasiswa {
  String? nama;
  String? jurusan;
  int? angkatan;

  //Default Constructor
  Mahasiswa();

  //Parameterized Constructor
  Mahasiswa.parameterized(this.nama, this.jurusan, this.angkatan);

  //Named Constructor
  Mahasiswa.fromJson(String jsonString) {
    // named constructor
    final Map<String, dynamic> data = json.decode(jsonString);
    nama = data['nama'];
    jurusan = data['jurusan'];
    angkatan = data['angkatan'];
  }
}
