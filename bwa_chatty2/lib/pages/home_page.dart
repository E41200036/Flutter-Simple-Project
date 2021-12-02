import 'package:bwa_chatty2/templates/chat/reply_item.dart';
import 'package:bwa_chatty2/templates/chat/sender_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bwa_chatty2/themes.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundLightBlueColor,
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(30),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/icon-1.png',
                        height: 55,
                        width: 55,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jakarta Fair',
                              style: titleTextStyle,
                            ),
                            Text(
                              '14,209 members',
                              style: subtitleTextStyle,
                            ),
                          ]),
                      Spacer(),
                      Image.asset('assets/images/whatsapp-icon.png',
                          width: 70, height: 70),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Column(
                    children: [
                      ReplyItem(
                        imgUrl: 'assets/images/pic-mini.png',
                        chat: 'How are you guys?',
                        time: '2:30',
                        status: false,
                      ),
                      const SizedBox(height: 30),
                      ReplyItem(
                        imgUrl: 'assets/images/pic-1.png',
                        chat: 'Find here :P',
                        time: '11:00',
                        status: false,
                      ),
                      const SizedBox(height: 30),
                      SenderItem(
                        imgUrl: 'assets/images/pic.png',
                        chat:
                            'Thinking about how to deal with this client from hell...',
                        time: '12:00',
                        status: true,
                      ),
                      const SizedBox(height: 30),
                      ReplyItem(
                        imgUrl: 'assets/images/pic-mini.png',
                        chat: 'Love Them',
                        time: '11.00',
                        status: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            SizedBox(
              width: 315,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Row(
                  children: [
                    Text(
                      'Type something ...',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff999999),
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/images/btn-nav.png',
                      width: 40,
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
