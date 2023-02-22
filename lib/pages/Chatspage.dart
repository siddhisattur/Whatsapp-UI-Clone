import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/ChatBottomBar.dart';
import '../widgets/ChatSample.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(top: 10, left: 5),
            child: InkWell(
                onTap: () => {
                      Navigator.pop(context),
                    },
                child: Icon(
                  Icons.arrow_back,
                  size: 25,
                )),
          ),
          leadingWidth: 20,
          title: Padding(
            padding: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "assets/profile1.png",
                    height: 45,
                    width: 45,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ross",
                        style: TextStyle(fontSize: 19),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "online",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 10, right: 25),
              child: Icon(
                CupertinoIcons.video_camera_solid,
                size: 35,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 25),
              child: Icon(
                Icons.call,
                size: 25,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 10),
              child: Icon(
                Icons.more_vert,
                size: 28,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/wallpaper.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 80),
          child: Column(
            children: [
              Container(
                width: 300,
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xFFFFF3C2),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Text(
                  //children: [
                  //Icon(Icons.lock),

                  "Messages are end-to-end encrypted, No one outside this chat can read or isten. Tap to learn more",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),

                  // ],
                ),
              ),
              ChatSample(),
              ChatSample(),
              ChatSample(),
              ChatSample(),
              ChatSample(),
              ChatSample(),
              ChatSample(),
            ],
          ),
        ),
      ),
      bottomSheet: ChatBottomBar(),
    );
  }
}
