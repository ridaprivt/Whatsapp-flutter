// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mywhatsapp/ChatMessage.dart';
import 'package:mywhatsapp/dialPage.dart';

class chatPage extends StatelessWidget {
  List<ChatMessage> messages = [
    ChatMessage(
        messageContent: "Hello, User",
        messageType: "receiver",
        messageTime: '12:01 am'),
    ChatMessage(
        messageContent: "How are you ?",
        messageType: "receiver",
        messageTime: '12:02 am'),
    ChatMessage(
        messageContent: "Hey Rida, I am fine. wbu?",
        messageType: "sender",
        messageTime: '12:03 am'),
    ChatMessage(
        messageContent: "doing ok.",
        messageType: "receiver",
        messageTime: '12:04 am'),
    ChatMessage(
        messageContent: "Is there smth wrong?",
        messageType: "sender",
        messageTime: '12:05 am'),
    ChatMessage(
        messageContent: "yes i guess",
        messageType: "receiver",
        messageTime: '12:06 am'),
    ChatMessage(
        messageContent: "Are you sure?",
        messageType: "sender",
        messageTime: '12:07 am')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.deepPurple,
              radius: 18.0,
              child: Text(
                'R',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 20),
              ),
            ),
            Column(
              children: [
                Text(
                  '   Rida',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '   online',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.grey,
                      fontSize: 13),
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.videocam_outlined,
              color: Colors.grey,
              size: 35,
            ),
            SizedBox(width: 10),
            InkWell(
              onTap: () {
                Get.to(dialPage());
              },
              child: Icon(
                Icons.local_phone,
                color: Colors.grey,
                size: 27,
              ),
            )
          ],
        ),
      ),
      body: ListView(children: [
        GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            height: 602.9,
            color: Color.fromARGB(255, 179, 179, 179),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                SizedBox(height: 30),
                Row(
                  children: [
                    SizedBox(width: 140),
                    Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 110, 110, 110),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        '  Today  ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 232, 232, 227),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 90),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 75),
                    Container(
                      padding: EdgeInsets.only(
                        left: 5,
                        right: 5,
                      ),
                      alignment: Alignment.center,
                      height: 110,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 52, 51, 51),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        'Messages and Calls are end-to-end encrypted, No one outside of this chat,not even Whatsapp,can read or listen to them. Tap to learn more.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 242, 242, 118),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 40),
                  ],
                ),
                Stack(children: <Widget>[
                  ListView.builder(
                    itemCount: messages.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(
                            left: 14, right: 14, top: 7, bottom: 5),
                        child: Align(
                          alignment: (messages[index].messageType == "receiver"
                              ? Alignment.topLeft
                              : Alignment.topRight),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: (messages[index].messageType == "receiver"
                                  ? Color.fromARGB(255, 255, 255, 255)
                                  : Color.fromARGB(255, 212, 245, 190)),
                            ),
                            padding: EdgeInsets.all(12),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      messages[index].messageContent,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              messages[index].messageTime,
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 91, 91, 91),
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Icon(
                                              Icons.done_all,
                                              color: Colors.blue,
                                              size: 18,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ]),
              ],
            ),
          ),
        ),
        Container(
            height: 60,
            color: Colors.black,
            child: Row(children: [
              Icon(
                Icons.add,
                color: Colors.blue,
                size: 33,
              ),
              Container(
                  height: 40,
                  width: 275,
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 1),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 44, 44, 44),
                      borderRadius: BorderRadius.circular(25)),
                  child: TextField(
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 44, 44, 44))),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Color.fromARGB(255, 44, 44, 44),
                        )),
                        suffixIcon: Icon(
                          Icons.note_outlined,
                          color: Colors.blue,
                          size: 30,
                        )),
                  )),
              SizedBox(width: 7),
              Icon(
                Icons.camera_alt_outlined,
                color: Colors.blue,
                size: 33,
              ),
              SizedBox(width: 5),
              Icon(
                Icons.mic_none,
                color: Colors.blue,
                size: 35,
              ),
            ])),
      ]),
    );
  }
}
