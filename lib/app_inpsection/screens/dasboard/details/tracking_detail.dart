import 'package:flutter/material.dart';
import 'package:tracking_app/app_inpsection/main_screen.dart';
import 'package:tracking_app/themes/colors.dart';

class TrackingDetail extends StatefulWidget {
  const TrackingDetail({Key? key}) : super(key: key);

  @override
  State<TrackingDetail> createState() => _TrackingDetailState();
}

class _TrackingDetailState extends State<TrackingDetail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: const Color(primaryYellow),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (ctx) => const MainScreen()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          _WidgetSuratJalan(size: size),
          _WidgetNamaPT(size: size),
          _WidgetWaktuDanLokasi(size: size),
        ]),
      ),
    );
  }
}

class _WidgetWaktuDanLokasi extends StatefulWidget {
  const _WidgetWaktuDanLokasi({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  @override
  State<_WidgetWaktuDanLokasi> createState() => _WidgetWaktuDanLokasiState();
}

class _WidgetWaktuDanLokasiState extends State<_WidgetWaktuDanLokasi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding),
      decoration: BoxDecoration(
          color: Colors.white70,
          border: Border.all(
              width: 2, color: Theme.of(context).scaffoldBackgroundColor),
          boxShadow: [
            BoxShadow(
                spreadRadius: 2,
                blurRadius: 10,
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(0, 10)),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      width: widget.size.width,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "25 Maret 2022",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "09.50.00",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text("09.50.00"),
              const Text("In Inspection"),
              const Text("Ok")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text("09.55.00"),
              const Text("Sekurity PKS"),
              const Text("Ok")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text("10.55.00"),
              const Text("Operator ST"),
              const Text("Ok")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text("11.00.00"),
              const Text("Out Inspection"),
              const Text("Ok")
            ],
          ),
        )
      ]),
    );
  }
}

class _WidgetNamaPT extends StatefulWidget {
  const _WidgetNamaPT({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<_WidgetNamaPT> createState() => _WidgetNamaPTState();
}

class _WidgetNamaPTState extends State<_WidgetNamaPT> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding),
      decoration: BoxDecoration(
          color: Colors.white70,
          border: Border.all(
              width: 2, color: Theme.of(context).scaffoldBackgroundColor),
          boxShadow: [
            BoxShadow(
                spreadRadius: 2,
                blurRadius: 10,
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(0, 10)),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      width: widget.size.width,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              "Asal Tujuan",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const Text(
              "PT. Mantul",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

class _WidgetSuratJalan extends StatefulWidget {
  const _WidgetSuratJalan({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<_WidgetSuratJalan> createState() => _WidgetSuratJalanState();
}

class _WidgetSuratJalanState extends State<_WidgetSuratJalan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding),
      decoration: BoxDecoration(
          color: Colors.white70,
          border: Border.all(
              width: 2, color: Theme.of(context).scaffoldBackgroundColor),
          boxShadow: [
            BoxShadow(
                spreadRadius: 2,
                blurRadius: 10,
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(0, 10)),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      width: widget.size.width,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "25 Maret 2022",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "09.50.00",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text("No. Surat Jalan"),
              const Text("No. Kontrak")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [const Text("No. DO"), const Text("No. Segel")],
          ),
        )
      ]),
    );
  }
}
