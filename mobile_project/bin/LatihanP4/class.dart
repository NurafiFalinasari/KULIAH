class Mobil {
  String? merk;
  String? warna;
  int? tahun;
  int? harga;
}
void main (){
  Mobil mobil = Mobil();
  print(mobil.merk = "Toyota");
  print(mobil.harga = 2000000000);
  print(mobil.tahun = 2000);
  print(mobil.warna = 'Biru');

}