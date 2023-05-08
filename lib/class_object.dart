void main() {
  // Create object kucing1 from Class of Kucing
  Kucing kucing1 = Kucing();
  kucing1.nama = 'Meong';
  kucing1.umur = 3;
  kucing1.display();
}

class Kucing {
  String? nama;
  int? umur;

// Method
  void display() {
    print("Nama Hewan: $nama");
    print("Umur Hewan:  $umur tahun");
  }
}
