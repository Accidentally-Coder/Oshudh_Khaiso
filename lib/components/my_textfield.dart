import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget{

  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.fromLTRB(15.0, 2.0, 15.0, 10.0),
      child: TextField(
        controller: controller,
        obscureText : obscureText,
        decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Colors.pinkAccent,
            )
          ),

          focusedBorder:  const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF001a33)),
          ),


          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[500]),
        ),
      ),
    );
  }
}