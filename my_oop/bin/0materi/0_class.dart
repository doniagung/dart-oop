class Mobil {
  String? merk;
  String? model;
  int? tahun;

  Mobil(String merk, String model, int tahun){
        this.merk = merk;
        this.model = model;
        this.tahun = tahun;
    }

  void klakson() {
    print("Beep!! Beepp !!");
  }
}

void main() {
  Mobil mobil1 = Mobil("honda","vario",2020);
  mobil1.klakson();
  print(mobil1.merk);
  print(mobil1.tahun);

  mobil1.merk = "Toyota";
  mobil1.tahun = 2020;

  print(mobil1.merk);
  print(mobil1.tahun);


}

