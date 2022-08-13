// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mywhatsapp/chatPage.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Edit',
                    style: TextStyle(
                        color: Color.fromARGB(255, 63, 159, 238), fontSize: 20),
                  )),
              Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.note_alt_outlined,
                    color: Color.fromARGB(255, 63, 159, 238),
                    size: 30,
                  ))
            ],
          ),
          SizedBox(height: 13),
          Row(
            children: [
              Text(' Chats',
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold))
            ],
          ),
          SizedBox(height: 10),
          Container(
              height: 40,
              width: 380,
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 1),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 44, 44, 44),
                  borderRadius: BorderRadius.circular(15)),
              child: TextField(
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w400),
                    enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 44, 44, 44))),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 44, 44, 44),
                    )),
                    prefixIcon: Icon(
                      Icons.search_outlined,
                      color: Color.fromARGB(
                        255,
                        142,
                        141,
                        141,
                      ),
                      size: 30,
                    )),
              )),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Broadcast List',
                    style: TextStyle(
                        color: Color.fromARGB(255, 63, 159, 238), fontSize: 20),
                  )),
              Spacer(),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'New Group',
                    style: TextStyle(
                        color: Color.fromARGB(255, 63, 159, 238), fontSize: 20),
                  )),
            ],
          ),
          Container(
              color: Colors.black,
              height: 485,
              child: ListView(children: [
                ListTile(
                  leading: Icon(
                    Icons.delete_outline,
                    color: Colors.grey,
                  ),
                  title: Text(
                    'Archived',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                Container(
                    child: Divider(color: Color.fromARGB(255, 87, 87, 87))),
                myChat(Colors.amber, 'R', 'Rida', '5:39 pm'),
                Container(
                    child: Divider(color: Color.fromARGB(255, 87, 87, 87))),
                myChat(Colors.blueGrey, 'A', 'Atta', '3:39 pm'),
                Container(
                    child: Divider(color: Color.fromARGB(255, 87, 87, 87))),
                myChat(Colors.red, 'M', 'Mama', '2:39 pm'),
                Container(
                    child: Divider(color: Color.fromARGB(255, 87, 87, 87))),
                myChat(Colors.purple, 'B', 'Baba', '1:39 pm'),
                Container(
                    child: Divider(color: Color.fromARGB(255, 87, 87, 87))),
                myChat(Colors.pink, 'M', 'Maha', '12:39 pm'),
                Container(
                    child: Divider(color: Color.fromARGB(255, 87, 87, 87))),
                myChat(
                    Color.fromARGB(255, 220, 233, 30), 'A', 'Aima', '12:39 pm'),
                Container(
                    child: Divider(color: Color.fromARGB(255, 87, 87, 87))),
                myChat(Color.fromARGB(255, 201, 141, 216), 'M', 'Mahnoor',
                    '12:39 pm'),
              ]))
        ],
      ),
    );
  }

  myChat(Color color, String first, String second, String third) {
    return Container(
      child: InkWell(
        child: ListTile(
          onTap: () {
            Get.to(chatPage());
          },
          leading: CircleAvatar(
            backgroundColor: color,
            radius: 30.0,
            child: Text(
              first,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 25),
            ),
          ),
          title: Text(
            second,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'Hi there, i am using whatsapp',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
          ),
          trailing: Column(
            children: [
              Text(
                third,
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
