import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:userfire/models/user.dart';
import 'package:userfire/services/firestore.dart';

class TambahPage extends StatefulWidget {
  @override
  _TambahPageState createState() => _TambahPageState();
}

class _TambahPageState extends State<TambahPage> {
  Firestore firestore = Firestore();
  final namaController = TextEditingController();
  final alamatController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah User'), backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: namaController,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: alamatController,
              decoration: InputDecoration(labelText: 'Alamat'),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            ElevatedButton(
                onPressed: () async {
                  final newUser = User(
                    id: '', //kolom idnya akan null saat menambahkan data| dan di firebase otomatis akan membuat auto_id dan belum dimasukan ke kolom ini
                    nama: namaController.text,
                    alamat: alamatController.text,
                    email: emailController.text,
                  );
                  await firestore.addUser(newUser);
                  Navigator.pop(context);
                },
                child: Text('Simpan'))
          ],
        ),
      ),
    );
  }
}
