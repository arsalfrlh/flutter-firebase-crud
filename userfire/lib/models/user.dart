class User {
  String id;
  String nama;
  String alamat;
  String email;

  User({required this.id, required this.nama, required this.alamat, required this.email});

  factory User.fromFirebase(Map<String, dynamic> json, String userId){ //didalam function fromFirebase ada parameter Map di simpan di variabel json, dan String di variabel userId
    return User(
      id: userId, //saat menambahkan data isi idnya null| saat mengupdate data idnya akan ke isi
      nama: json['nama'],
      alamat: json['alamat'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toFirebase(){
    return{
      'id': id,
      'nama': nama,
      'alamat': alamat,
      'email': email,
    };
  }
}
