import 'package:flutter/material.dart';
import 'package:tracking_app/themes/colors.dart';

class DasboardCard extends StatefulWidget {
  const DasboardCard({Key? key}) : super(key: key);

  @override
  State<DasboardCard> createState() => _DasboardCardState();
}

class _DasboardCardState extends State<DasboardCard> {
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
      width: size.width,
      child: Column(
        children: <Widget>[
          Padding(
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
                          image: AssetImage('assets/images/logo-hasnur.png'))),
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
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(primaryYellow),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Test",
                            style: Theme.of(context).textTheme.button),
                        const TextSpan(
                          text: "Test2",
                          style: TextStyle(
                            color: Color(primaryYellow),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "Test3",
                    style: Theme.of(context).textTheme.button,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
