// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(children: [
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 20),
              Text('Settings',
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold))
            ],
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 0),
            height: 90,
            color: Color.fromARGB(255, 34, 33, 33),
            child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/pfp.jpeg',
                    width: 50,
                    height: 50,
                  ),
                ),
                title: Text(
                  'Rida',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'busy',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
                trailing: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 56, 53, 53),
                    radius: 20.0,
                    child: Icon(
                      Icons.qr_code,
                      color: Colors.blue,
                    ))),
          ),
          SizedBox(height: 30),
          Container(
            color: Color.fromARGB(255, 34, 33, 33),
            child: Column(
              children: [
                myBox(Colors.yellow, Icons.star, 'Starred Messages'),
                Divider(color: Color.fromARGB(255, 87, 87, 87)),
                myBox(Color.fromARGB(255, 24, 194, 199), Icons.laptop,
                    'Linked Devices'),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            color: Color.fromARGB(255, 34, 33, 33),
            child: Column(children: [
              myBox(Colors.blue, Icons.key, 'Account'),
              Divider(color: Color.fromARGB(255, 87, 87, 87)),
              myBox(Color.fromARGB(255, 92, 222, 96), Icons.whatsapp, 'Chats'),
              Divider(color: Color.fromARGB(255, 87, 87, 87)),
              myBox(Colors.redAccent, Icons.mark_chat_unread_outlined,
                  'Notifications'),
              Divider(color: Color.fromARGB(255, 87, 87, 87)),
              myBox(Color.fromARGB(255, 92, 222, 96), Icons.compare_arrows,
                  'Storage and Data'),
            ]),
          ),
          SizedBox(height: 30),
          Container(
            color: Color.fromARGB(255, 34, 33, 33),
            child: Column(
              children: [
                myBox(Colors.blue, Icons.info_outline, 'Help'),
                Divider(color: Color.fromARGB(255, 87, 87, 87)),
                myBox(Colors.red, Icons.favorite, 'Tell a Friend'),
              ],
            ),
          ),
          SizedBox(height: 30),
        ]));
  }

  myBox(Color color, IconData icon, String text) {
    return ListTile(
      leading: Container(
        height: 30,
        width: 30,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      title: Text(
        text,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 15,
        color: Colors.grey,
      ),
    );
  }
}
