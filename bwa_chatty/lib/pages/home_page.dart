// ignore_for_file: prefer_const_constructors

import 'package:bwa_chatty/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: greenColor,
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/profile-pic.png',
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sabrina Carpenter',
                  style: TextStyle(fontSize: 20, color: whiteColor),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Travel Freelancer',
                  style: TextStyle(
                      fontSize: 16,
                      color: lightBlueColor,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friend',
                        style: TextStyle(
                            color: blackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChatTile(
                        imgUrl: 'assets/images/pic-1.png',
                        name: 'Jhosuer',
                        chat: 'Sorry your not my ty..',
                        time: 'Now',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChatTile(
                        imgUrl: 'assets/images/pic.png',
                        name: 'Gabriella',
                        chat: 'I saw it clearly and mig...',
                        time: '2:30',
                        read_status: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Group',
                        style: TextStyle(
                            color: blackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChatTile(
                        imgUrl: 'assets/images/icon2.png',
                        name: 'Build With Angga',
                        chat: 'Why does everyone ca...',
                        time: '07:11',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChatTile(
                        imgUrl: 'assets/images/icon.png',
                        name: 'Bentley',
                        chat: 'Here here we can go...',
                        time: '12:11',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChatTile(
                        imgUrl: 'assets/images/icon-1.png',
                        name: 'Angga',
                        chat: 'Here here we can go...',
                        time: '12:11',
                        read_status: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
