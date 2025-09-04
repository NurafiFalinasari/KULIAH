void main(List<String> args) {
  List<String> name = ['Dea', 'Sari', 'Nir', 'Afi', 'Ika'];
  for (var i = 0; i < name.length; i++) {
    print("Nama ke-$i : ${name[i]}");
  }

  for (var name in name) {
    print("Nama: $name");
  }
}