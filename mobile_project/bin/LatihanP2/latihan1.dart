import 'dart:io';

void main() {
  stdout.write("Cek Nilai Mahasiswa: ");
  int nilai = int.parse(stdin.readLineSync()!);

  if (nilai >= 90) {
    print("A");
  } else if (nilai >= 80) {
    print("B");
  } else if (nilai >= 70) {
    print("C");
  } else if (nilai >= 60) {
    print("D");
  } else {
    print("Tidak lulus");
  }
}