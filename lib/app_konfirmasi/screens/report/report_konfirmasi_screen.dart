import 'package:flutter/material.dart';
import 'package:tracking_app/app_konfirmasi/screens/report/report_details/report_details.dart';
import 'package:tracking_app/themes/colors.dart';

class ReportKonfirmasiScreen extends StatefulWidget {
  const ReportKonfirmasiScreen({Key? key}) : super(key: key);

  @override
  State<ReportKonfirmasiScreen> createState() => _ReportKonfirmasiScreenState();
}

class _ReportKonfirmasiScreenState extends State<ReportKonfirmasiScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(primaryYellow),
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        title: const Center(
          child: Text('REPORT'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          InkWell(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (ctx) => const ReportDetails()));
            },
            child: Container(
              height: 50,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Icon(Icons.send),
                  Text('Dikirim'),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
          ),
          const SizedBox(height: 25),
          InkWell(
            onTap: () {},
            child: Container(
              height: 50,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Icon(Icons.done),
                  Text('Selesai'),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
          ),
          const SizedBox(height: 25),
          InkWell(
            onTap: () {},
            child: Container(
              height: 50,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Icon(Icons.backpack_sharp),
                  Text('Pengembalian'),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
          ),
          const SizedBox(height: 25),
          InkWell(
            onTap: () {},
            child: Container(
              height: 50,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Icon(Icons.question_mark_sharp),
                  Text('Outstanding'),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
