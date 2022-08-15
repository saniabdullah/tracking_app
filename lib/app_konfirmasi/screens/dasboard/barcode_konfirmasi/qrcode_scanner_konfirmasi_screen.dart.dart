import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:tracking_app/app_konfirmasi/main_konfirmasi.dart';

class QRCodeScannerKonfirmasiScreen extends StatefulWidget {
  const QRCodeScannerKonfirmasiScreen({Key? key}) : super(key: key);

  @override
  State<QRCodeScannerKonfirmasiScreen> createState() =>
      _QRCodeScannerKonfirmasiScreenState();
}

class _QRCodeScannerKonfirmasiScreenState
    extends State<QRCodeScannerKonfirmasiScreen> {
  final MobileScannerController _cameraController = MobileScannerController();
  bool _camera = true;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('QR Scanner'),
            centerTitle: true,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainScreenKonfirmasi()));
                }),
          ),
          body: _camera
              ? MobileScanner(
                  allowDuplicates: false,
                  controller: _cameraController,
                  onDetect: (barcode, args) {
                    _cameraController.stop();
                    _cameraController.dispose();
                    setState(() {
                      _camera = false;
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const MainScreenKonfirmasi()));
                  },
                )
              : const Text(''),
        ),
        onWillPop: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const MainScreenKonfirmasi()));
          return Future.value(true);
        });
  }

  @override
  void dispose() {
    _cameraController.dispose();
    print('Camera Disposed');
    super.dispose();
  }
}
