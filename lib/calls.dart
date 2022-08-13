// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:mywhatsapp/tabController.dart';
import 'package:get/get.dart';
import 'package:mywhatsapp/ScreenOne.dart';
import 'package:mywhatsapp/ScreenTwo.dart';

class Calls extends StatelessWidget {
  @override
  Widget build(context) {
    final myTabs tabs = Get.put(myTabs());

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text(
              'Edit',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Spacer(),
            Container(
              height: 40,
              width: 170,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 53, 53, 53),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TabBar(
                controller: tabs.controller,
                indicator: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                labelColor: Colors.white,
                tabs: [
                  Tab(
                    text: 'All',
                  ),
                  Tab(text: 'Missed'),
                ],
              ),
            ),
            Spacer(),
            Icon(
              Icons.add_ic_call_outlined,
              color: Colors.blue,
              size: 25,
            ),
            SizedBox(width: 10),
          ],
        ),
      ),
      body: TabBarView(controller: tabs.controller, children: [
        ScreenOne(),
        ScreenTwo(),
      ]),
    );
  }
}
