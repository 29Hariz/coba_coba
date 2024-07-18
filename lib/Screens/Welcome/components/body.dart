import 'package:coba_coba/Screens/SignUp/signup_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //menyediakan total tinggi dan lebar layar kita
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Image.asset(
            "assets/images/Welcome_Page.png",
            height: size.height,
            width: size.width,
            fit: BoxFit.cover,
          ),

          Positioned(
            top: size.height * 0.15,
            left: size.width*0.1,
            right: size.width*0.1,
            child: const Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "WELCOME",
                  style: TextStyle(
                    fontFamily: 'K2D',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          Positioned(
            top: size.height * 0.21,
            left: size.width*0.1,
            right: size.width*0.1,
            child: const Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ready to Control Your Roof!",
                  style: TextStyle(
                    fontFamily: 'K2D',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          Positioned(
            bottom: size.height * 0.15,
            left: size.width * 0.1,
            right: size.width * 0.1,
            child: Column(
              children: [
                const Text(
                  "Masuk untuk mengontrol atap cerdas dan\nnikmati kemudahan hidup modern",
                  style: TextStyle(
                    fontFamily: 'K2D',
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height:40),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(140, 50),
                    padding: const EdgeInsets.symmetric(horizontal:24,vertical:12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),              
                  ),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context){return SignupScreen();},),);},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "MASUK",
                        style: TextStyle(
                          fontFamily: 'K2D',
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.black,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

