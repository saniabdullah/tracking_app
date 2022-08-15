import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tracking_app/themes/colors.dart';

class ReportDetailCard extends StatefulWidget {
  const ReportDetailCard({Key? key}) : super(key: key);

  @override
  State<ReportDetailCard> createState() => _ReportDetailCardState();
}

class _ReportDetailCardState extends State<ReportDetailCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      decoration: BoxDecoration(
        color: Colors.white70,
        border: Border.all(
            width: 2, color: Theme.of(context).scaffoldBackgroundColor),
        boxShadow: [
          BoxShadow(
              spreadRadius: 2,
              blurRadius: 10,
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0, 10))
        ],
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      width: size.width,
      child: Column(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                border: Border(
              bottom: BorderSide(width: 1, color: Colors.black),
            )),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(0, 10))
                        ],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage('assets/images/logo-hasnur.png'))),
                  ),
                  const Text(
                    "PT. Hasnur Citra Terpadu",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: const BoxDecoration(
                  border: Border(
                bottom: BorderSide(width: 1, color: Colors.black),
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(0, 10))
                        ],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage('assets/images/logo-hasnur.png'))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Column(
                      children: [
                        Text(
                          "Crude Palm Oil(CPO)",
                          style: Theme.of(context).textTheme.button,
                        ),
                        Text(
                          "Nomor DO",
                          style: Theme.of(context).textTheme.button,
                        ),
                        Text(
                          "Tanggal DO",
                          style: Theme.of(context).textTheme.button,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: TextButton(
                    onPressed: () {
                      // Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (ctx) => const PesananDetail()));
                    },
                    child: Column(
                      children: const [
                        Text(
                          "Konfirmasi terima sebelum",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "08 - 04 - 2022",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Pesan Diterima",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
