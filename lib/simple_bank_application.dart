void main() {
  //Create object Nasabah1 & Nasabah2
  Nasabah nasabah1 = Nasabah("Alghany", "Bandung");
  Nasabah nasabah2 = Nasabah("Ridha", "Jakarta", saldo: 100);

  //Transaction
  nasabah1.saveBalance(500);
  nasabah2.takeBalance(85);
  nasabah1.takeBalance(450);

  //show total balance
  print("Total Balance ${nasabah1.nama} as Nasabah1: ${nasabah1.saldo}");
  print("Total Balance ${nasabah2.nama} as Nasabah2: ${nasabah2.saldo}");
}

class Nasabah {
  String nama;
  String alamat;
  int saldo;

  //Construtor parameterized
  Nasabah(this.nama, this.alamat, {this.saldo = 0});

  void saveBalance(int total) {
    saldo += total;
  }

  void takeBalance(int total) {
    saldo -= total;
  }
}
