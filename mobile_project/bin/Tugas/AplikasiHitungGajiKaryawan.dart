void main() {
  String nama = 'Nurafi Falinasari';
  int jamKerja = 40;
  double upahPerJam = 25000.0;
  bool statusTetap = true;

  double gajiKotor = jamKerja * upahPerJam;

  double persenPajak = statusTetap ? 0.10 : 0.05;

  double pajak = gajiKotor * persenPajak;
  double gajiBersih = gajiKotor - pajak;

  // Menampilkan hasil
  print('       DATA GAJI KARYAWAN');
  print('Nama           : $nama');
  print('Status         : ${statusTetap ? 'Tetap' : 'Kontrak'}');
  print('Jam Kerja      : $jamKerja jam/minggu');
  print('Upah per Jam   : Rp${upahPerJam.toStringAsFixed(0)}');
  print('Gaji Kotor     : Rp${gajiKotor.toStringAsFixed(0)}');
  print('Pajak (${(persenPajak * 100).toInt()}%)  : Rp${pajak.toStringAsFixed(0)}');
  print('Gaji Bersih    : Rp${gajiBersih.toStringAsFixed(0)}');
}