import 'package:flutter/material.dart';

class ChatsWidget extends StatelessWidget {
  const ChatsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            //inkwell-responds well when touched
            for (int i = 1; i < 11; i++)
              //ross
              InkWell(
                onTap: () => {Navigator.pushNamed(context, "chatsPage")},
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      //round edges
                      Flexible(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            "assets/profile$i.png",
                            height: 65,
                            width: 65,
                          ),
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
                            Text(
                              "We were on a Break !",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //adds proper space
                      Spacer(),
                      Column(
                        children: [
                          Text("10:00 AM",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 58, 178, 110))),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 58, 178, 110),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "10",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
