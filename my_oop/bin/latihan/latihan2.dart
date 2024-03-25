// 1. Class induk Hewan
class Hewan {
  String nama;

  Hewan(this.nama);

  void suara() {
    print('Hewan ini bersuara');
  }
}

// Class anak Kucing
class Kucing extends Hewan {
  String jenisBulu;

  Kucing(String nama, this.jenisBulu) : super(nama);

  @override
  void suara() {
    print('$nama: Meong!');
  }
}

// 2. Class RekeningBank
class RekeningBank {
  double _saldo;

  RekeningBank(this._saldo);

  double get saldo => _saldo;

  void setor(double jumlah) {
    _saldo += jumlah;
    print('Saldo setelah setor: $_saldo');
  }

  void tarik(double jumlah) {
    if (_saldo >= jumlah) {
      _saldo -= jumlah;
      print('Saldo setelah tarik: $_saldo');
    } else {
      print('Saldo tidak mencukupi');
    }
  }
}

// 3. Class BangunDatar
abstract class BangunDatar {
  double hitungLuas();
}

// Class turunan Persegi
class Persegi extends BangunDatar {
  double sisi;

  Persegi(this.sisi);

  @override
  double hitungLuas() {
    return sisi * sisi;
  }
}

// Class turunan Segitiga
class Segitiga extends BangunDatar {
  double alas;
  double tinggi;

  Segitiga(this.alas, this.tinggi);

  @override
  double hitungLuas() {
    return 0.5 * alas * tinggi;
  }
}

// 4. Abstract class Bentuk
abstract class Bentuk {
  double hitungLuas();
}

// Class Lingkaran yang merupakan turunan dari Bentuk
class Lingkaran extends Bentuk {
  double jariJari;

  Lingkaran(this.jariJari);

  @override
  double hitungLuas() {
    return 3.14 * jariJari * jariJari;
  }
}

void main() {
  // Membuat objek dari class Kucing dan memanggil metode suara()
  var kucing = Kucing('Kitty', 'Persia');
  kucing.suara();

  // Membuat objek dari class RekeningBank dan melakukan beberapa transaksi
  var rekening = RekeningBank(1000);
  rekening.setor(500);
  rekening.tarik(200);
  rekening.tarik(1500); // akan mencetak pesan saldo tidak mencukupi

  // Membuat objek dari class Persegi dan Segitiga dan memanggil metode hitungLuas()
  var persegi = Persegi(5);
  print('Luas Persegi: ${persegi.hitungLuas()}');

  var segitiga = Segitiga(4, 6);
  print('Luas Segitiga: ${segitiga.hitungLuas()}');

  // Membuat objek dari class Lingkaran dan memanggil metode hitungLuas()
  var lingkaran = Lingkaran(7);
  print('Luas Lingkaran: ${lingkaran.hitungLuas()}');
}
