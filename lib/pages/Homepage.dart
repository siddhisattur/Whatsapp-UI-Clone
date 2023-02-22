import 'package:flutter/material.dart';

import '../widgets/CallsWidget.dart';
import '../widgets/ChatsWidget.dart';
import '../widgets/StatusWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: Padding(
              // EdgeInsets class specifies offsets in terms of visual edges, left, top, right, and bottom
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "WhatsApp",
                style: TextStyle(fontSize: 21),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(top: 10, right: 15),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              PopupMenuButton(
                onSelected: (selected) {
                  if (selected == 5) {
                    Navigator.pushNamed(context, "settingsPage");
                  }
                },
                elevation: 10,
                padding: EdgeInsets.symmetric(vertical: 20),
                iconSize: 28,
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text(
                      "New Group",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text(
                      "New Broadcast",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Text(
                      "Linked Devices",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 4,
                    child: Text(
                      "Starred Messages",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 5,
                    child: Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.teal,
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                tabs: [
                  //TAB 1
                  Container(
                    width: 25,
                    child: Tab(
                      icon: Icon(Icons.camera_alt),
                    ),
                  ),
                  //TAB 2
                  Container(
                    width: 90,
                    child: Tab(
                      child: Row(
                        children: [
                          Text("CHATS"),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "10",
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //TAB 3
                  Container(
                      width: 85,
                      child: Tab(
                        child: Text("STATUS"),
                      )),
                  //TAB 4
                  Container(
                    width: 85,
                    child: Tab(
                      child: Text("CALLS"),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: TabBarView(
                children: [
                  //tab 1 camera
                  Container(color: Colors.black),
                  //tab 2 chat
                  ChatsWidget(),
                  //tab 3
                  StatusWidget(),
                  //tab 4
                  CallsWidget(),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.teal,
          child: Icon(Icons.message),
        ),
      ),
    );
  }
}
