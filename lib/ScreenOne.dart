// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 20),
              Text('Calls',
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold))
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 535,
            child: ListView(children: [
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
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 44, 44, 44))),
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
              myBar(Colors.blue, 'M', 'Mama', 'incoming', '12:39 am '),
              Container(child: Divider(color: Color.fromARGB(255, 87, 87, 87))),
              myBar(Colors.deepPurple, 'A', 'Atta', 'Outgoing', '11:39 pm'),
              Container(child: Divider(color: Color.fromARGB(255, 87, 87, 87))),
              myBar(Colors.red, 'B', 'Baba', 'incoming', '10:39 pm'),
              Container(child: Divider(color: Color.fromARGB(255, 87, 87, 87))),
              myBar(Colors.orangeAccent, 'A', 'Aliha', 'Outgoing', '9:39 pm'),
              Container(child: Divider(color: Color.fromARGB(255, 87, 87, 87))),
              myBar(Colors.pinkAccent, 'M', 'Mama', 'incoming', '8:39 pm'),
              Container(child: Divider(color: Color.fromARGB(255, 87, 87, 87))),
              myBar(Colors.purpleAccent, 'R', 'Rida', 'incoming', 'Yesterday'),
              Container(child: Divider(color: Color.fromARGB(255, 87, 87, 87))),
              myBar(Colors.lightGreen, 'A', 'Atta', 'Outgoing', 'Yesterday'),
              Container(child: Divider(color: Color.fromARGB(255, 87, 87, 87))),
              myBar(Colors.brown, 'M', 'Maha', 'Outgoing', 'Yesterday'),
              Container(child: Divider(color: Color.fromARGB(255, 87, 87, 87))),
              myBar(Colors.indigoAccent, 'B', 'Baba', 'incoming', 'Yesterday'),
              Container(child: Divider(color: Color.fromARGB(255, 87, 87, 87))),
              myBar(Colors.pinkAccent, 'M', 'Maha', 'Outgoing', 'Yesterday'),
              Container(child: Divider(color: Color.fromARGB(255, 87, 87, 87))),
            ]),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  myBar(Color color, String letter, String name, String incoming, String time) {
    return Container(
        child: ListTile(
      leading: CircleAvatar(
        backgroundColor: color,
        radius: 30.0,
        child: Text(
          letter,
          style: TextStyle(
              fontWeight: FontWeight.w700, color: Colors.white, fontSize: 25),
        ),
      ),
      title: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        incoming,
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            time,
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 16),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.info_outline,
            color: Colors.blue,
            size: 25,
          )
        ],
      ),
    ));
  }
}
