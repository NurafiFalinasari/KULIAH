import 'dart:io';

void main() {
  bool lanjut = true;

  while (lanjut) {
    print('Kalkulator Sederhana');
    print('1. Penjumlahan');
    print('2. Pengurangan');
    print('3. Perkalian');
    print('4. Pembagian');

    stdout.write('Pilih operasi (1-4): ');
    int pilihan = int.parse(stdin.readLineSync()!);

    stdout.write('Masukkan angka pertama: ');
    double angka1 = double.parse(stdin.readLineSync()!);

    stdout.write('Masukkan angka kedua: ');
    double angka2 = double.parse(stdin.readLineSync()!);

    double hasil = 0;
    bool operasiValid = false;

    for (int i = 1; i <= 4; i++) {
      if (pilihan == i) {
        operasiValid = true;
        if (i == 1) {
          hasil = angka1 + angka2;
          print('Hasil penjumlahan = $hasil');
        } else if (i == 2) {
          hasil = angka1 - angka2;
          print('Hasil pengurangan = $hasil');
        } else if (i == 3) {
          hasil = angka1 * angka2;
          print('Hasil perkalian = $hasil');
        } else if (i == 4) {
          if (angka2 != 0) {
            hasil = angka1 / angka2;
            print('Hasil pembagian = $hasil');
          }
        }
        break;
      }
    }

    if (!operasiValid) {
      print('Pilihan tidak valid. Silakan pilih angka 1–4.');
    }

    stdout.write('\nApakah Anda ingin melanjutkan? (yes/no): ');
    String jawaban = stdin.readLineSync()!.toLowerCase();
    if (jawaban != 'yes') {
      lanjut = false;
      print('\nTerima kasih telah menggunakan kalkulator!');
    }
  }
}