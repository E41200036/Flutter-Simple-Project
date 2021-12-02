import 'package:flutter/material.dart';
import '../../themes.dart';

class ReplyItem extends StatelessWidget {
  String imgUrl;
  final chat;
  final time;
  bool status;

  ReplyItem({this.imgUrl = '', this.chat, this.time, this.status = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Image.asset(
          imgUrl,
          width: 40,
          height: 40,
        ),
        SizedBox(
          width: 12,
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 10,
              right: 20,
              left: 20,
            ),
            decoration: BoxDecoration(
              color: (status == false) ? chatTileColor : whiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chat,
                  style: chatTextStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
