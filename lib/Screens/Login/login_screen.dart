import 'dart:developer';

import 'package:coba_coba/Screens/Dashboard/dashboard_screen.dart';
import 'package:coba_coba/Screens/Login/components/password.dart';
import 'package:coba_coba/Screens/SignUp/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        //height: size.height,
        //width: double.infinity,
        child: Stack(
          children: <Widget>[
            Image.asset(
              "assets/images/SignUp_Page.png",
              height: size.height,
              width: size.width,
              fit: BoxFit.cover,
            ),

            Positioned(
              top: size.height * 0.35,
              left: size.width * 0.1,
              right: size.width * 0.1,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          backgroundColor: const Color.fromRGBO(184, 255, 249, 1),
                          elevation: 5,                          
                        ),
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context){return SignupScreen();},),);},
                        child: const Row(
                          children: [
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                fontFamily: 'K2D',
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            )
                          ],
                        )
                      ),

                      const SizedBox(width: 10),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          backgroundColor: const Color.fromRGBO(239, 255, 253, 2),
                          elevation: 5,                       
                        ),
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Text(
                              "Log In",
                              style: TextStyle(
                                fontFamily: 'K2D',
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            )
                          ],
                        )
                      ),
                    ],
                  ),
                  const SizedBox(height:50),

                  Center(
                    child:Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(239, 255, 253, 1),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 20,
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Username",
                          hintStyle: TextStyle(
                            fontFamily: "K2D",
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 16,
                          ),
                          filled: true, 
                          fillColor: const Color.fromRGBO(239, 255, 253, 1),                         
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        ),
                        onChanged: (value){
                          log(value);
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                    
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(239, 255, 253, 1),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 20,
                          ),
                        ],
                      ),
                      child: Password(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  Center(
                    child: Column(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            backgroundColor: const Color.fromRGBO(66, 194, 255, 1),
                            foregroundColor: Colors.white,
                          ),
                          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return DashboardScreen();},),);},
                          child: const Text(
                            "Log In",
                            style: TextStyle(
                              fontFamily: "K2D",
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),        
                ]
              )
            ),
          ],
        ),
      ),
    );
  }
}