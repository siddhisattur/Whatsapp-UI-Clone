import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
//import 'package:custom_clippers/custom_clippers.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: ClipPath(
            //clipper: UpperNipMessageClipper(MessageType.receive),
            clipper: UpperNipMessageClipperTwo(MessageType.receive),
            child: Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text(
                "Hi, I am Ross and let me tell you we were on a break!!! 😒🥲🙂😐",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ),
        Container(
          // padding: EdgeInsets.only(right: 80),
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(top: 20, left: 80, bottom: 15),
          child: ClipPath(
            //clipper: UpperNipMessageClipper(MessageType.receive),
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
              decoration: BoxDecoration(
                color: Color(0xFFE4FDCA),
              ),
              child: Text(
                "Hi, I am Chandler, I make Jokes when I'm awkward haha. Could I be anymore funny 😂😂😂",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
