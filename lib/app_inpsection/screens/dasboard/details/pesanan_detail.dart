import 'package:flutter/material.dart';
import 'package:tracking_app/app_inpsection/main_screen.dart';
import 'package:tracking_app/themes/colors.dart';

class PesananDetail extends StatefulWidget {
  const PesananDetail({Key? key}) : super(key: key);

  @override
  State<PesananDetail> createState() => _PesananDetailState();
}

class _PesananDetailState extends State<PesananDetail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(primaryYellow),
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (ctx) => const MainScreen()));
          },
          icon: const Icon(Icons.arrow_back),
          color: const Color(primaryYellow),
        ),
      ),
      body: Column(
        children: [
          Container(
              padding: const EdgeInsets.only(bottom: 75),
              margin: const EdgeInsets.only(
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                  top: kDefaultPadding * 4,
                  bottom: kDefaultPadding),
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
              width: size.width,
              child: Column(
                children: <Widget>[
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Detail Tiket",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 25, bottom: 75, left: 25, right: 25),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Jasa Kirim : "),
                            Text("OK"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Tanggal : "),
                            Text("20 - 8 -2022"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Nama supir : "),
                            Text("Supardi"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("No. Polisi : "),
                            Text("DA 54 NI"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("No. SIM : "),
                            Text("982398238"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Tempat Muat : "),
                            Text("Jembatan Timbang"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Tujuan Berangkat : "),
                            Text("Pos 2"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Keterangan : "),
                            Text("OK"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("No. Polisi yang berbeda : "),
                            Text("-"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Container(
            width: 100,
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Sesuai',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )),
          )
        ],
      ),
    );
  }
}
