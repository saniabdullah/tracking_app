import 'package:flutter/material.dart';
import 'package:tracking_app/app_konfirmasi/main_konfirmasi.dart';
import 'package:tracking_app/app_konfirmasi/screens/dasboard/barcode_konfirmasi/qrcode_scanner_konfirmasi_screen.dart.dart';
import 'package:tracking_app/themes/colors.dart';

class BarcodeKonfirmasiScreen extends StatefulWidget {
  const BarcodeKonfirmasiScreen({Key? key}) : super(key: key);

  @override
  State<BarcodeKonfirmasiScreen> createState() =>
      _BarcodeKonfirmasiScreenState();
}

class _BarcodeKonfirmasiScreenState extends State<BarcodeKonfirmasiScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 1,
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (ctx) => const MainScreenKonfirmasi()));
            },
            icon: const Icon(Icons.arrow_back),
            color: const Color(primaryYellow),
          ),
        ),
        backgroundColor: const Color(primaryYellow),
        body: Container(
          margin: const EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              top: kDefaultPadding / 2,
              bottom: kDefaultPadding * 2.5),
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
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
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
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(8),
                    width: size.width / 1.2,
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        'Temukan Kode Untuk Dipindah',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const QRCodeScannerKonfirmasiScreen()),
                          (route) => false);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.all(8),
                      color: Colors.white,
                      child: SizedBox(
                        child: Image.asset('assets/images/barcode.png'),
                        height: 150,
                        width: 150,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: IconButton(
                      iconSize: 50,
                      icon: const Icon(Icons.flashlight_on),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                  )
                ],
              )),
            )
          ]),
        ));
  }
}
