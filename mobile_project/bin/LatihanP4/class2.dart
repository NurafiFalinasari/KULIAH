class Dosen {
  String? nama;
  String? nip;

  Dosen(this.nama, this.nip);
}

class Mahasiswa extends Dosen {
  String? npm;

  Mahasiswa(String? nama, this.npm, String? nip) : super(nama, nip);
}

void main() {
  var mhs = Mahasiswa("Budi", "123456789", "D123");
  print("Nama Mahasiswa: ${mhs.nama}");
  print("NPM Mahasiswa: ${mhs.npm}");
  print("NIP Dosen (dari Mahasiswa): ${mhs.nip}");
}
