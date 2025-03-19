import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:userfire/models/user.dart';
import 'package:userfire/services/firestore.dart';

class UpdatePage extends StatefulWidget {
  User user;
  UpdatePage({required this.user});

  @override
  _UpdatePageState createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  Firestore firestore = Firestore();
  late TextEditingController namaController;
  late TextEditingController alamatController;
  late TextEditingController emailController;

  @override
  void initState() {
    super.initState();
    namaController = TextEditingController(text: widget.user.nama);
    alamatController = TextEditingController(text: widget.user.alamat);
    emailController = TextEditingController(text: widget.user.email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update User'),
        backgroundColor: Colors.blue,
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
                  final updateUser = User(
                      id: widget.user.id, //akan mengisi kolom id yg berisi auto_id yg sudah dibuat otomatis oleh firebase pada saat di update
                      nama: namaController.text,
                      alamat: alamatController.text,
                      email: emailController.text);
                  await firestore.updateUser(updateUser);
                  Navigator.pop(context);
                },
                child: Text('Update'))
          ],
        ),
      ),
    );
  }
}
