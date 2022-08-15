import 'package:flutter/material.dart';
import 'package:tracking_app/app_inpsection/main_screen.dart';
import 'package:tracking_app/themes/colors.dart';

class Ketidaksesuaian extends StatefulWidget {
  const Ketidaksesuaian({Key? key}) : super(key: key);

  @override
  State<Ketidaksesuaian> createState() => _KetidaksesuaianState();
}

class _KetidaksesuaianState extends State<Ketidaksesuaian> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final _formKey = GlobalKey<FormState>();
    final _keterangan = TextEditingController();

    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(primaryYellow),
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainScreen(),
                ));
          },
          icon: const Icon(Icons.arrow_back),
          color: const Color(primaryYellow),
        ),
      ),
      body: Container(
          margin: const EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
            top: kDefaultPadding * 4,
            bottom: kDefaultPadding * 4,
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(8),
                        width: size.width / 1.2,
                        color: Colors.green,
                        child: const Center(
                          child: Text(
                            'Alasan Ketidaksesuaian',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                        key: _formKey,
                        child: TextFormField(
                          controller: _keterangan,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Nomor polisi yang berbeda',
                              hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: 100,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainScreen(),
                          ));
                    },
                    child: const Text(
                      'Selesai',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          )),
    ));
  }
}
