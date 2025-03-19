import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:userfire/models/user.dart';

class Firestore {
  final CollectionReference db = FirebaseFirestore.instance.collection('users'); //menyimpan koneksi firebase ke dalam variabel db| ('users') digunakan untuk membuat tabel users di firebase dan menyimpan data user di tabel tersebut

  Future<void> addUser(User user) async {
    await db.add(user.toFirebase()); //menggunakan method add untuk menambahkan data ke firebase| mengirim data yang ada di model user
  }

  Future<List<User>> getAllUser() async {
    QuerySnapshot snapshot = await db.get(); //menggunakan method get untuk mengambil data dari firebase
    return snapshot.docs.map((item) => User.fromFirebase(item.data() as Map<String, dynamic>, item.id)).toList(); //mengkonversi data dari vaiabel snapshot tadi ke dalam class User dan function fromFirebase
  }

  Future<void> updateUser(User user)async{
    await db.doc(user.id).update(user.toFirebase()); //menggunakan method update untuk mengupdate data user| mengirim data yang ada di model user
  }

  Future<void> deleUser(String id)async{
    await db.doc(id).delete(); //menggunakan method delete untuk menghapus data user
  }
}
