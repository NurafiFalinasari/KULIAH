//Kelas Abstrak Transportasi
abstract class Transportasi {
  String id;
  String nama;
  double _tarifDasar;
  int kapasitas;

  Transportasi(this.id, this.nama, this._tarifDasar, this.kapasitas);

  double get tarifDasar => _tarifDasar;
  double hitungTarif(int jumlahPenumpang);
  void tampilanInfo() {
    print("[$id] $nama | Kapasistas: $kapasitas | Tarif Dasar: $_tarifDasar");
  
}
}

//Kelas Taksi
class Taksi extends Transportasi {
  double jarak;
  Taksi(String id, String nama, double _tarifDasar, int kapasitas, this.jarak)
    : super(id, nama, _tarifDasar, kapasitas);

    @override
    double hitungTarif(int jumlahPenumpang) => tarifDasar * jarak;
  }

// Kelas Bus
class Bus extends Transportasi {
  bool adaWifi;
  Bus(String id, String nama, double tarifDasar, int kapasitas, this.adaWifi)
    : super(id, nama, tarifDasar, kapasitas);

    @override
    double hitungTarif(int jumlahPenumpang) =>
      (tarifDasar * jumlahPenumpang) + (adaWifi ? 5000 : 0);
}

//Kelas Pesawat
class Pesawat  extends Transportasi {
  String kelas;
  Pesawat(String id, String nama, double _tarifDasar, int kapasitas, this.kelas)
  : super(id, nama, _tarifDasar, kapasitas);

  @override
    double hitungTarif(int jumlahPenumpang) =>
      tarifDasar * jumlahPenumpang * (kelas == "Bisnis" ? 1.5: 1.0);
}

//Kelas Pemesanan
class Pemesanan {
  String idPemesanan;
  String namaPelanggan;
  Transportasi transportasi;
  int jumlahPenumpang;
  double totalTarif;

  Pemesanan(
    this.idPemesanan,
    this.namaPelanggan,
    this.transportasi,
    this.jumlahPenumpang,
    this.totalTarif,
  );

  void cetakStruk() {
    print (
      "\n === Struk Pemesanan ===\nID: $idPemesanan\nPelanggan: $namaPelanggan\nTransportasi: ${transportasi.nama}\nJumlah Penumpang: $jumlahPenumpang\Total Tarif: Rp$totalTarif\n",
    );
  }
 Map <String, dynamic> toMap() => {
  "idPemesanan": idPemesanan,
  "namaPelanggan" : namaPelanggan,
  "transportasi": transportasi.nama,
  "jumlahPenumpang": jumlahPenumpang,
  "totalTarif" : totalTarif,
 };
}
// Fungsi Global: buat Pemesanan
Pemesanan buatPemesanan(
  Transportasi t,
  String nama,
  int jumlahPenumpang,
  String idPemesanan,
) {
  double total = t.hitungTarif(jumlahPenumpang);
  return Pemesanan(idPemesanan, nama, t, jumlahPenumpang, total);
}

// Fungsi Global: tamp[ilSemuaPemesanan
void tampiSemuaPemesanan(List<Pemesanan> daftar) {
  print("\n=== Riwayat Pemesanan ===");
  for (var p in daftar) {
    p.cetakStruk();
  }
}

//Fungsi main()
void main() {
  // Membuat objek transportasi baru
  var taksi = Taksi("T01", "Taksi Blue Bird", 25000, 4, 10.0);
  var bus = Bus("B01", "Bus Sinar Jaya", 10000, 50, true);
  var pesawat = Pesawat("P01", "Batik", 8000000, 150, "Bisnis");

  // Membuat daftar Pemesanan
  List<Pemesanan> daftar = [];
  daftar.add(buatPemesanan(taksi, "Erni, Eca, Eci", 3, "PSN01"));
  daftar.add(buatPemesanan(bus, "BIlla, Bibi, Bilbil, Biya, Biri", 5, "PSN02"));
  daftar.add(buatPemesanan(pesawat, "Eko, Eka", 2, "PSN03"));

  //Menampilkan Semua hasil pemesanan
  tampiSemuaPemesanan(daftar);
}