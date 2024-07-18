import 'dart:ui';

import 'package:coba_coba/Screens/Dashboard/components/fanwidget.dart';
import 'package:coba_coba/Screens/Dashboard/components/roofwidget.dart';
import 'package:coba_coba/Screens/Dashboard/components/switch.dart';
import 'package:coba_coba/Screens/Profile/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class DashboardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
          "assets/images/Dashboard.png",
          height: size.height,
          width: size.width,
          fit: BoxFit.cover,
          ),

          Positioned(
            top: size.height * 0.08,
            left: size.width * 0.05,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Hi, Hariz!",
                  style: TextStyle(
                    fontFamily: 'K2D',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20.0),

                
              ],
            ),
          ),

          Positioned(
            top: size.height * 0.11,
            left: size.width * 0.05,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Tembalang, Central Java",
                  style: TextStyle(
                    fontFamily: "K2D",
                    fontSize: 12,
                    color: Color.fromRGBO(0, 0, 0, 50)
                  )
                )
              ],
            )
          ),

          Positioned(
            top: size.height * 0.08,
            right: size.width * 0.05,
            child: IconButton.filled(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return ProfileScreen();},),);},
              icon: const Icon(Icons.person),
              color: Colors.black,
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(66, 194, 255, 1)),
                
              ),
            )
          ),

          Positioned(
            top: size.height * 0.25,
            right: size.width * 0.1,
            child: Container(
              height: 151,
              width: 324,
              decoration: BoxDecoration(
                gradient: const SweepGradient(
                  colors: [
                    Color.fromRGBO(133, 244, 255, 1),
                    Color.fromRGBO(184, 255, 249, 1),
                    Color.fromRGBO(66, 194, 255, 1)
                  ],
                  center: Alignment.center,
                  startAngle: 0.0,
                  endAngle: 2 * 1,
                ),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: const Offset(0, 4)
                  )
                ]
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.38,
            right: size.width * 0.1,
            child: SwitchWidget()
          ),

          Positioned(
            top: size.height * 0.25,
            right: size.width * 0.1,
            child: Row(
              children: <Widget>[
                Container(
                  width: 81,
                  height: 120,
                  decoration:const BoxDecoration(
                    color: Color.fromRGBO(239, 255, 253, 1),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(11),
                      topLeft: Radius.circular(11)
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Cuaca",
                        style: TextStyle(
                          fontFamily: "K2D",
                          fontSize: 10,
                        ),
                      ),
                      const SizedBox(height: 15.0),

                      Image.asset(
                        "assets/icons/cuaca.png",
                        height: 30,
                        width:25,
                      ),
                      const SizedBox(height: 15.0),

                      const Text(
                        "Berawan",
                        style: TextStyle(
                          fontFamily: "K2D",
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  width: 81,
                  height: 120,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(239, 255, 253, 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Cahaya",
                        style: TextStyle(
                          fontFamily: "K2D",
                          fontSize: 10,
                        ),
                      ),
                      const SizedBox(height: 15.0),

                      Image.asset(
                        "assets/icons/cahaya.png",
                        height: 30,
                        width: 25,
                      ),
                      const SizedBox(height: 15.0),

                      const Text(
                        "Terang",
                        style: TextStyle(
                          fontFamily: "K2D",
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  width: 81,
                  height: 120,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(239, 255, 253, 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Suhu",
                        style: TextStyle(
                          fontFamily: "K2D",
                          fontSize: 10,
                        ),
                      ),
                      const SizedBox(height: 15.0),

                      Image.asset(
                        "assets/icons/suhu.png",
                        height: 30,
                        width: 25,
                      ),
                      const SizedBox(
                      height: 15.0,
                      ),

                      const Text(
                        "20°",
                        style: TextStyle(
                          fontFamily: "K2D",
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  width: 81,
                  height: 120,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(11),
                      bottomRight: Radius.circular(11)
                    ),
                    color: Color.fromRGBO(239, 255, 253, 1),
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Kelembapan",
                        style: TextStyle(
                          fontFamily: "K2D",
                          fontSize: 10,
                        ),
                      ),
                      const SizedBox(height: 15.0),

                      Image.asset(
                        "assets/icons/kelembapan.png",
                        height: 30,
                        width: 25,
                      ),
                      const SizedBox(height: 15.0),

                      const Text(
                        "45%",
                        style: TextStyle(
                          fontFamily: "K2D",
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ),

          Positioned(
            top: size.height * 0.396,
            left: size.width * 0.15,
            child: 
              const Text(
                "Pengaturan Sistem Otomatis",
                style: TextStyle(
                  fontFamily: "K2D",
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
          ),
          const SizedBox(
          height: 30.0,
          ),

          Positioned(
            top: size.height * 0.5,
            left: size.width * 0.08,
            child: Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft, 
                  end:Alignment.bottomRight, 
                  colors:[
                    Color.fromRGBO(184, 255, 249, 1),
                    Color.fromRGBO(239, 255, 253, 1),
                  ]
                ),                  
              
                boxShadow: [BoxShadow(
                  color:Colors.black.withOpacity(0.25), 
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: const Offset(0, 4)
                  )
                ]
              ),
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/fan.png",
                          height: 70,
                          width: 70,
                        )
                      ],
                    ),
                  ),

                  Container(
                    height: 150,
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 75,
                              width: 150,
                              decoration: const BoxDecoration(
                                color: Colors.transparent
                              ),
                              child:const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Kipas Angin",
                                    style: TextStyle(
                                      fontFamily: "K2D",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              )
                            )
                          ],
                        ),

                        FanWidget()                        
                      ],
                    ),
                  ),

                  Container(
                    height: 150,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.more_horiz_sharp)
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ),

          Positioned(
            top: size.height * 0.7,
            left: size.width * 0.08,
            child: Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft, 
                  end:Alignment.bottomRight, 
                  colors:[
                    Color.fromRGBO(184, 255, 249, 1),
                    Color.fromRGBO(239, 255, 253, 1),
                  ]
                ),                  
              
                boxShadow: [BoxShadow(
                  color:Colors.black.withOpacity(0.25), 
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: const Offset(0, 4)
                  )
                ]
              ),
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/roof.png",
                          height: 70,
                          width: 70,
                        )
                      ],
                    ),
                  ),

                  Container(
                    height: 150,
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 75,
                              width: 150,
                              decoration: const BoxDecoration(
                                color: Colors.transparent
                              ),
                              child:const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Konfigurasi Atap",
                                    style: TextStyle(
                                      fontFamily: "K2D",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              )
                            )
                          ],
                        ),

                        RoofWidget()
                      ],
                    ),
                  ),

                  Container(
                    height: 150,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.more_horiz_sharp)
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          )
        ]
      ),        
    );    
  }
}