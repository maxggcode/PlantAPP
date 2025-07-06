//反覆使用的模組
//按鈕
   import 'package:flutter/material.dart';


class homepage_button_model extends StatelessWidget{
  final String text;
  final VoidCallback on_tap;

  const homepage_button_model({
    required this.text,
    required this.on_tap,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: on_tap,
      style: ElevatedButton.styleFrom (
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 10,
        ),
        backgroundColor: Colors.white,
      ),
      child: Text(
        text,
        style:TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}

//註冊和登入輸入匡模組

class sign_input extends StatelessWidget{
  final String text;
  final TextEditingController controller;
  
  const sign_input({
    required this.controller,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 300,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          width: 300,
          height: 40,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


