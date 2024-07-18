import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  @override
  _SwitchWidgetState createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          _isOn ? 'ON' : 'OFF',
          style: TextStyle(
            color: _isOn ? Colors.black : Colors.black,
            fontFamily: "K2D",
            fontSize: 12,
            fontWeight: FontWeight.bold
          ),
        ),
        
        Transform.scale(
          scale: 0.6,
          child: 
            Switch(
              value: _isOn, 
              onChanged: (value){
                setState(() {
                  _isOn = value;
                });
              },
              activeColor: Color.fromRGBO(66, 194, 255, 1),
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.black,
              activeTrackColor: Colors.white,
            ),
        ),
      ],
    );
  }
}