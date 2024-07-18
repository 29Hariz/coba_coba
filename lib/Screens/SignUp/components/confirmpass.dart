import 'package:flutter/material.dart';

class ConfirPassword extends StatefulWidget {
  @override
  _ConfirPasswordState createState() => _ConfirPasswordState();
}

class _ConfirPasswordState extends State<ConfirPassword>{
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 0),
      child: TextField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          hintText: "Confirm Password",
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
          suffixIcon: IconButton(
            icon: Icon(_obscureText ? Icons.visibility: Icons.visibility_off),
            onPressed: (){
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          )
        )
      ),
    );
  }
}