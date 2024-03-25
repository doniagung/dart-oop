// Class Mobil
class Mobil {
  String merk;
  String model;
  int tahun;

  Mobil(this.merk, this.model, this.tahun);

  void info() {
    print('Mobil: $merk $model, Tahun: $tahun');
  }
}

// Class Mahasiswa
class Mahasiswa {
  String nama;
  String nim;

  Mahasiswa({this.nama = 'Nama Mahasiswa', this.nim = 'NIM123456'});

  void info() {
    print('Mahasiswa: $nama, NIM: $nim');
  }
}

// Class Buku
class Buku {
  String judul;
  String pengarang;

  Buku(this.judul, this.pengarang);

  void info() {
    print('Buku: $judul, Pengarang: $pengarang');
  }
}

// Class Segitiga
class Segitiga {
  double alas;
  double tinggi;
  String jenis;

  Segitiga(this.alas, this.tinggi, this.jenis);

  // Named constructor untuk segitiga berdasarkan jenisnya
  Segitiga.segitigaSikuSiku(this.alas, this.tinggi) : jenis = 'Siku-Siku';

  Segitiga.segitigaSamaSisi(this.alas, this.tinggi) : jenis = 'Sama Sisi';

  void info() {
    print('Segitiga: Alas=$alas, Tinggi=$tinggi, Jenis=$jenis');
  }
}

// Class Warna
class Warna {
  final int red;
  final int green;
  final int blue;

  const Warna(this.red, this.green, this.blue);

  void info() {
    print('Warna: R=$red, G=$green, B=$blue');
  }
}

void main() {
  // Membuat objek dari class Mobil dan mencetak informasinya
  var mobil1 = Mobil('Toyota', 'Avanza', 2020);
  mobil1.info();

  // Membuat objek dari class Mahasiswa tanpa memberikan nilai tambahan, dan mencetak informasinya
  var mahasiswa1 = Mahasiswa();
  mahasiswa1.info();

  // Membuat objek dari class Buku dengan memberikan nilai pada konstruktor, dan mencetak informasinya
  var buku1 = Buku('Dunia Sophie', 'Jostein Gaarder');
  buku1.info();

  // Membuat objek dari class Segitiga menggunakan named constructor, dan mencetak informasinya
  var segitiga1 = Segitiga.segitigaSikuSiku(3, 4);
  segitiga1.info();

  var segitiga2 = Segitiga.segitigaSamaSisi(5, 5);
  segitiga2.info();

  // Membuat beberapa objek dari class Warna menggunakan constant constructor, dan mencetak informasinya
  const warna1 = Warna(255, 0, 0);
  warna1.info();

  const warna2 = Warna(0, 255, 0);
  warna2.info();

  const warna3 = Warna(0, 0, 255);
  warna3.info();
}