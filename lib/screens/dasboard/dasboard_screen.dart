import 'package:flutter/material.dart';
import 'package:tracking_app/screens/dasboard/dasboard_card.dart';
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
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(primaryYellow),
          ),
          onPressed: () {},
        ),
      ),
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
