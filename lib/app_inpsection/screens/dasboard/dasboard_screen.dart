import 'package:flutter/material.dart';
import 'package:tracking_app/app_inpsection/screens/dasboard/dasboard_card.dart';
import 'package:tracking_app/themes/colors.dart';

class DasboardScreen extends StatefulWidget {
  const DasboardScreen({Key? key}) : super(key: key);

  @override
  State<DasboardScreen> createState() => _DasboardScreenState();
}

class _DasboardScreenState extends State<DasboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        title: const Center(child: Text("Pesanan Dikirim")),
      ),
      backgroundColor: const Color(primaryYellow),
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget>[
            DasboardCard(),
            DasboardCard(),
            DasboardCard(),
          ],
        ),
      ),
    );
  }
}
