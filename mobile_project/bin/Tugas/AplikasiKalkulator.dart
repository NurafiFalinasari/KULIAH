import 'dart:io';
import 'dart:math';

double tambah(double a, double b) => a + b;

double kurang(double a, double b) => a - b;

double kali(double a, double b) => a * b;

double bagi(double a, double b) {
  if (b == 0) {
    print("Error: Tidak bisa membagi dengan nol.");
    return double.nan;
  }
  return a / b;
}

double modulus(double a, double b) {
  if (b == 0) {
    print("Error: Tidak bisa modulus dengan nol.");
    return double.nan;
  }
  return a % b;
}

double pangkat(double a, double b) => pow(a, b).toDouble();

void kalkulator() {
  print('\n Kalkulator Aritmetika Lengkap ');
  print('1. Penjumlahan (+)');
  print('2. Pengurangan (-)');
  print('3. Perkalian (*)');
  print('4. Pembagian (/)');
  print('5. Modulus (%)');
  print('6. Pangkat (^)');

  stdout.write('Pilih operasi (1–6): ');
  int pilihan = int.parse(stdin.readLineSync()!);

  stdout.write('Masukkan angka pertama: ');
  double angka1 = double.parse(stdin.readLineSync()!);

  stdout.write('Masukkan angka kedua: ');
  double angka2 = double.parse(stdin.readLineSync()!);

  double hasil;

  switch (pilihan) {
    case 1:
      hasil = tambah(angka1, angka2);
      print('Hasil penjumlahan = $hasil');
      break;
    case 2:
      hasil = kurang(angka1, angka2);
      print('Hasil pengurangan = $hasil');
      break;
    case 3:
      hasil = kali(angka1, angka2);
      print('Hasil perkalian = $hasil');
      break;
    case 4:
      hasil = bagi(angka1, angka2);
      if (!hasil.isNaN) print('Hasil pembagian = $hasil');
      break;
    case 5:
      hasil = modulus(angka1, angka2);
      if (!hasil.isNaN) print('Hasil modulus = $hasil');
      break;
    case 6:
      hasil = pangkat(angka1, angka2);
      print('Hasil pangkat = $hasil');
      break;
    default:
      print('Pilihan tidak valid. Silakan pilih angka 1–6.');
  }
}

void main() {
  bool lanjut = true;

  while (lanjut) {
    kalkulator();

    stdout.write('\nApakah Anda ingin melanjutkan? (yes/no): ');
    String jawaban = stdin.readLineSync()!.toLowerCase();
    if (jawaban != 'yes') {
      lanjut = false;
      print('\nTerima kasih telah menggunakan kalkulator!');
    }
  }
}