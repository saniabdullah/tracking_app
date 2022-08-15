import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:tracking_app/app_inpsection/main_screen.dart';

class QRCodeScannerScreen extends StatefulWidget {
  const QRCodeScannerScreen({Key? key}) : super(key: key);

  @override
  State<QRCodeScannerScreen> createState() => _QRCodeScannerScreenState();
}

class _QRCodeScannerScreenState extends State<QRCodeScannerScreen> {
  final MobileScannerController _cameraController = MobileScannerController();
  bool _camera = true;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const MainScreen()));
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('QR Scanner'),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const MainScreen()));
            },
          ),
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
                          builder: (context) => const MainScreen()));
                },
              )
            : const Text(''),
      ),
    );
  }

  @override
  void dispose() {
    _cameraController.dispose();
    print('Camera Disposed!');
    super.dispose();
  }
}
