import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_apps/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/log.png",
                width: 50,
                height: 50,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                "Trip Apps",
                style: heroTextStyle,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Whom You are Planning To Travel With?',
            style: heroTextStyle,
          ),
          const SizedBox(height: 30)
        ],
      );
    }

    Widget option(int index, String title, String subtitle) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
          margin: const EdgeInsetsDirectional.only(bottom: 20),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: selectedIndex == index
                  ? Color(0xFFFF7551)
                  : Color(0xff252836),
            ),
            color: Color(0xff252836),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: titleTextStyle),
                  const SizedBox(height: 8),
                  Text(
                    subtitle,
                    style: subtitleTextStyle,
                  ),
                ],
              ),
              selectedIndex == index
                  ? Image.asset(
                      "assets/Checklist.png",
                      width: 25,
                      height: 25,
                    )
                  : Image.asset(
                      "assets/offcheck.png",
                      width: 25,
                      height: 25,
                    )
            ],
          ),
        ),
      );
    }

    Widget continueButton() {
      return SizedBox(
        height: 100,
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xFF6C5ECF),
                borderRadius: BorderRadius.circular(12),
              ),
              width: 332,
              height: 55,
              child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Continue to Hotels", style: buttonTextStyle),
                      Image.asset("assets/Union.png", width: 14, height: 11),
                    ],
                  )),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding:
            const EdgeInsets.only(right: 30, left: 30, bottom: 30, top: 60),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              option(0, 'Solo Trip', 'Suitable for you need a calm situation'),
              option(1, 'Family Trip', 'Suitable for Make Perfect Memory'),
              option(2, 'Couples Trip',
                  'Suitable for spending time with loved ones'),
              // option(3, 'Company Trip', 'Suitable for refreshing your office mind'),
              continueButton()
            ],
          ),
        ),
      ),
    );
  }
}
