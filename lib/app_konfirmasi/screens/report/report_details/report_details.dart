import 'package:flutter/material.dart';
import 'package:tracking_app/app_konfirmasi/main_konfirmasi.dart';
import 'package:tracking_app/app_konfirmasi/screens/report/report_details/report_detail_card.dart';
import 'package:tracking_app/themes/colors.dart';

class ReportDetails extends StatefulWidget {
  const ReportDetails({Key? key}) : super(key: key);

  @override
  State<ReportDetails> createState() => _ReportDetailsState();
}

class _ReportDetailsState extends State<ReportDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(primaryYellow),
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
      body: SingleChildScrollView(
          child: Column(
        children: const <Widget>[
          ReportDetailCard(),
          ReportDetailCard(),
          ReportDetailCard()
        ],
      )),
    );
  }
}
