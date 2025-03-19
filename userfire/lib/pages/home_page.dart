import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:userfire/pages/tambah_page.dart';
import 'package:userfire/pages/update_page.dart';
import 'package:userfire/services/firestore.dart';
import 'package:userfire/models/user.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Firestore firestore = Firestore();
  List<User> userList = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchUser();
  }

  Future<void> fetchUser() async {
    setState(() {
      isLoading = true;
    });
    userList = await firestore.getAllUser();
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: IconButton(
          onPressed: () {
            Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TambahPage()))
                .then((_) => fetchUser());
          },
          icon: Icon(Icons.add),
          color: Colors.green,
        ),
        appBar: AppBar(
          title: Text('Home Page'),
          backgroundColor: Colors.blue,
        ),
        body: RefreshIndicator(
          onRefresh: fetchUser,
          child: isLoading
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: userList.length,
                  itemBuilder: (context, index) {
                    final user = userList[index];
                    return ListTile(
                      title: Text('Nama: ${user.nama}'),
                      subtitle:
                          Text('Alamat: ${user.alamat}, Email: ${user.email}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => UpdatePage(user: user,))).then((_) => fetchUser()); //saat di klik akan memasukan data yg di pilih kedalam class User dan akan ditampilkan kembali ke dalam UpdatePage
                              },
                              icon: Icon(Icons.edit)),
                          ElevatedButton(
                              onPressed: () async{
                                await firestore.deleUser(user.id).then((_) => fetchUser());
                              },
                              child: Icon(Icons.delete))
                        ],
                      ),
                    );
                  }),
        ));
  }
}
