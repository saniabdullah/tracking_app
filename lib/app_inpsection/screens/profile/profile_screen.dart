// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:tracking_app/themes/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final _formKey = GlobalKey<FormState>();
    final _namaController = TextEditingController();
    final _alamatController = TextEditingController();
    final _nomorController = TextEditingController();
    final _phoneController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        title: const Text("PROFILE"),
        centerTitle: true,
      ),
      backgroundColor: const Color(primaryYellow),
      body: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5,
        ),
        decoration: BoxDecoration(
            color: Colors.white70,
            border: Border.all(
                width: 1, color: Theme.of(context).scaffoldBackgroundColor),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 10,
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(0, 10))
            ],
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(0, 10))
                        ],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage('assets/images/logo-hasnur.png'))),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          color: const Color(primaryYellow),
                        ),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              width: size.width * 0.5,
              child: Form(
                key: _formKey,
                child: Column(children: [
                  TextFormField(
                    controller: _namaController,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 3),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: 'Nama',
                        hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: _alamatController,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 3),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: 'Alamat',
                        hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: _nomorController,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 3),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: 'No. Kontrak',
                        hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: _phoneController,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 3),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: 'No. Telp',
                        hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlineButton(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {},
                  color: Colors.white,
                  child: const Text("CANCEL",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.black)),
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.red,
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    "SAVE",
                    style: TextStyle(
                        fontSize: 14, letterSpacing: 2.2, color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
