// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mywhatsapp/chatPage.dart';

class dialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Expanded(
            child: Image.asset(
              'assets/bg.jpg',
            ),
          ),
          Column(
            children: [
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      Get.off(chatPage());
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.lock,
                    color: Colors.grey,
                    size: 15,
                  ),
                  Text(
                    '  End-to-end Encryption',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                  Spacer(),
                  Icon(
                    Icons.person_add_alt_1,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                'Rida',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                '00:00',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 50),
              ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image.asset(
                  'assets/pfp.jpeg',
                  width: 200,
                  height: 200,
                ),
              ),
              Spacer(),
              Container(
                height: 130,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 33, 32, 32),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Transform.scale(
                          scaleX: 2.5,
                          child: Icon(
                            Icons.expand_less_rounded,
                            color: Color.fromARGB(255, 96, 96, 96),
                            size: 30,
                          ),
                        )
                      ]),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 67, 67, 67),
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Icon(
                            Icons.volume_up,
                            color: Colors.white,
                            size: 40,
                          )),
                      Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 67, 67, 67),
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Icon(
                            Icons.videocam,
                            color: Colors.white,
                            size: 40,
                          )),
                      Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 67, 67, 67),
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Icon(
                            Icons.mic_off,
                            color: Colors.white,
                            size: 40,
                          )),
                      InkWell(
                        onTap: () {
                          Get.off(chatPage());
                        },
                        child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 209, 36, 36),
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Icon(
                              Icons.call_end,
                              color: Colors.white,
                              size: 40,
                            )),
                      )
                    ],
                  ),
                ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
