import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tracking_app/app_konfirmasi/screens/dasboard/barcode_konfirmasi/barcode_konfirmasi_screen.dart';
import 'package:tracking_app/themes/colors.dart';

class DasboardKonfirmasiScreen extends StatefulWidget {
  const DasboardKonfirmasiScreen({Key? key}) : super(key: key);

  @override
  State<DasboardKonfirmasiScreen> createState() =>
      _DasboardKonfirmasiScreenState();
}

class _DasboardKonfirmasiScreenState extends State<DasboardKonfirmasiScreen> {
  String? trackingNumber;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final _formKey = GlobalKey<FormState>();
    final _trackingController = TextEditingController();

    return Scaffold(
        backgroundColor: const Color(primaryYellow),
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 1,
          centerTitle: true,
          leading: const Padding(
            padding: EdgeInsets.all(20),
            child: FaIcon(FontAwesomeIcons.userLarge,
                color: Color(primaryYellow), size: 22),
          ),
          title: const Center(child: Text("Hai, PT KARYA INDAH")),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Container(
              height: size.height * 0.7,
              margin: const EdgeInsets.only(
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                  top: kDefaultPadding / 2,
                  bottom: kDefaultPadding * 2.5),
              decoration: BoxDecoration(
                  color: Colors.white70,
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
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(children: <Widget>[
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/logo-hasnur.png',
                          width: 100,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'HASNUR GROUP',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.blue),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'TRACKING CPO',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: size.width * 0.5,
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: _trackingController,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 0)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 0)),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: 'Nomor Tiket',
                                      hintStyle: const TextStyle(
                                          fontSize: 16,
                                          color: Color(textPlaceholder))),
                                ),
                                const SizedBox(
                                  height: 35,
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const BarcodeKonfirmasiScreen()));
                                    },
                                    child: const Text(
                                      'SEARCH',
                                      style: TextStyle(
                                          color: Color(primaryBlack),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
        ));
  }
}
