// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:to_do_app/utils/dialog_box_profile.dart';
import 'package:to_do_app/utils/my_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController nameC = TextEditingController();
  TextEditingController jobC = TextEditingController();
  String nama = 'Jisso';
  String job = "Artist";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/jisoo.jpg'),
            ),
            const SizedBox(height: 24),
            Text(
              'Nama: $nama',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
            ),
            const SizedBox(height: 10),
            Text(
              'Pekerjaan: $job',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(
                  text: "Update",
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return DialogBoxProfile(
                          controllerName: nameC,
                          controllerJob: jobC,
                          cancel: Navigator.of(context).pop,
                          onSave: () async {
                            //update data nama dan job
                            var myresponse = await http.put(
                                Uri.parse('https://reqres.in/api/users/2'),
                                body: {'name': nameC.text, 'job': jobC.text});
                            Map<String, dynamic> data =
                                json.decode(myresponse.body)
                                    as Map<String, dynamic>;
                            setState(() {
                              nama = data['name'];
                              job = data['job'];
                            });
                            Navigator.of(context).pop();
                          },
                        );
                      },
                    );
                  },
                ),
                MyButton(
                  text: 'Delete',
                  onPressed: () async {
                    //delete data
                    var myresponse = await http
                        .delete(Uri.parse('https://reqres.in/api/users/2'));
                    //jika status code 204(delete), ubah nilai nama
                    if (myresponse.statusCode == 204) {
                      setState(() {
                        nama = "Update Nama";
                        job = "Update pekerjaan";
                      });
                    }
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
