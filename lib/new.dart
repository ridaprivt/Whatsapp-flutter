// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mywhatsapp/chats.dart';
import 'package:mywhatsapp/settings.dart';
import 'package:mywhatsapp/calls.dart';
import 'package:mywhatsapp/status.dart';
import 'package:mywhatsapp/myAppController.dart';

class Whatsapp extends StatelessWidget {
  myAppController controller = myAppController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<myAppController>(
        // specify type as Controller
        init: myAppController(), // intialize with the Controller
        builder: (myAppController controller) => Scaffold(
              body: Container(
                  height: 2000,
                  child: IndexedStack(
                    index: controller.myIndex,
                    children: [
                      Status(),
                      Calls(),
                      Camera(),
                      Chats(),
                      Settings(),
                    ],
                  )),
              bottomNavigationBar: BottomNavigationBar(
                  selectedItemColor: Colors.blue,
                  unselectedItemColor: Colors.grey,
                  showUnselectedLabels: true,
                  currentIndex: controller.myIndex,
                  onTap: controller.changeIndex,
                  items: [
                    bottomBar(Icons.donut_large_outlined, 'Status'),
                    bottomBar(Icons.phone_outlined, 'Calls'),
                    bottomBar(Icons.local_see_outlined, 'Camera'),
                    bottomBar(Icons.question_answer, 'Chats'),
                    bottomBar(Icons.settings, 'Settings'),
                  ]),
            ));
  }
}

bottomBar(IconData icon, String label) {
  return BottomNavigationBarItem(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      icon: Icon(
        icon,
        size: 25,
      ),
      label: label);
}

class Camera extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold();
  }
}
