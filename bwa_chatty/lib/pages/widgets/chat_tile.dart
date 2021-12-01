// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../theme.dart';

class ChatTile extends StatelessWidget {
  final String imgUrl;
  final name;
  final chat;
  final time;
  final read_status;

  ChatTile(
      {this.imgUrl = '', this.name, this.chat, this.time, this.read_status});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imgUrl,
          width: 55,
          height: 55,
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                  color: blackColor, fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Text(
              chat,
              style: TextStyle(
                  color: (read_status == false) ? greyColor : blackColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Spacer(),
        Text(
          time,
          style: TextStyle(
            color: greyColor,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
