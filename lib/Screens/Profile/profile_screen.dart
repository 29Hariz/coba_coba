import 'package:coba_coba/Screens/Dashboard/dashboard_screen.dart';
import 'package:coba_coba/Screens/Login/login_screen.dart';
import 'package:coba_coba/Screens/Profile/editprofile_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(184, 255, 249, 1),
        leading: IconButton(
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return DashboardScreen();},),);}, 
          icon: const Icon(Icons.arrow_back_rounded)
        ),
        title: 
          const Text(
            "Profile",
            style: TextStyle(
              fontFamily: "K2D",
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        centerTitle: true,
      ),

      body: Stack(
        children: [
          Image.asset(
            "assets/images/Profilepage.png",
            height: size.height,
            width: size.width,
            fit: BoxFit.cover
          ),

          Positioned(
            top: size.height * 0.0,
            left: size.width * 0.26,
            child: Container(
              height: 190,
              width: 200,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(184, 255, 249, 1)
              ),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/profile.png",
                    height: 150,
                    width: 150,                    
                  )
                ],
              ),
            )
          ),

          Positioned(
            top: size.height * 0.3,
            child: SizedBox(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                  height: 10.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(350, 40),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))
                    ),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return EditProfileScreen();},),);}, 
                    child: const Row(
                      children: [
                        Text(
                          "Edit Profile",
                          style: TextStyle(
                            fontFamily: "K2D",
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.black
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_right_rounded)
                      ],
                    )
                  ),
                  const SizedBox(
                  height: 20.0,
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(350, 40),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))
                    ),
                    onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return LoginScreen();},),);}, 
                    child: const Row(
                      children: [
                        Text(
                          "Log Out",
                          style: TextStyle(
                            fontFamily: "K2D",
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.black
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_right_rounded)
                      ],
                    )
                  ),
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}