import 'package:flutter/material.dart';
import 'main_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'tools.dart';
import 'api_service.dart';

class sign_in extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return sign_instate(); 
  }
}

class sign_instate extends State<sign_in>{

  final Map<String, TextEditingController> form_controllers={
    "mail":TextEditingController(),
    "pass":TextEditingController(),
  };

  bool _loading = false;

  Future<void> _log_in() async
  {
    setState(() => _loading=true);
    final res=await ApiService.login(
      email: form_controllers['mail']!.text.trim(),
      password: form_controllers['pass']!.text,
    );
    setState(() => _loading=false);
    print(res);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            sign_input(
              controller: form_controllers["mail"]!,
              text: "使用者姓名",
            ),//輸入

            SizedBox(
              height: 10,
            ),

            sign_input(
              controller: form_controllers["pass"]!,
              text: "密碼",
            ),

            SizedBox(
              height: 30,
            ),

            ElevatedButton(
              onPressed: (){
                _log_in();
              }, 
              style: ElevatedButton.styleFrom (
                side:BorderSide(color:Colors.black),
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                backgroundColor: Colors.white,
              ),
              child: Text(
                "登入",
                style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}