import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallsWidget extends StatelessWidget {
  const CallsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            for (int i = 1; i < 5; i++)
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "assets/profile$i.png",
                        height: 60,
                        width: 60,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ross",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.call_made,
                                color: Colors.teal,
                                size: 19,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "(1) Today 12:45 PM",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Icon(
                        Icons.call_sharp,
                        color: Colors.teal,
                      ),
                    )
                  ],
                ),
              ),
            for (int i = 5; i < 11; i++)
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "assets/profile$i.png",
                        height: 60,
                        width: 60,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ross",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.call_received,
                                color: Colors.red,
                                size: 19,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "(1) Today 12:45 PM",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Icon(
                        CupertinoIcons.videocam_fill,
                        color: Colors.teal,
                      ),
                    )
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
