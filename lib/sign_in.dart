import 'package:flutter/material.dart';
import 'main_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'tools.dart';

class sign_in extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return sign_instate(); 
  }
}

class sign_instate extends State<sign_in>{
  String res= "";
  Future<void> fetchpostData() async {
    final url = Uri.parse('http://127.0.0.1:5001/login');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer my_secret_key',

      },
      body: jsonEncode({
        'username': 'flutter',
        'password': '123456',
      }),
    );

    setState(() {
      if ( response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print("收到資料：${data['message']}");
        res = data['message'];
      } else {
        final err = jsonDecode(response.body);
        print("錯誤：${err['message']}");
        res = "錯誤：${err['message']}";
      }
    });
  }

  final Map<String, TextEditingController> form_controllers={
    "name":TextEditingController(),
    "pass":TextEditingController(),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            sign_input(
              controller: form_controllers["name"]!,
              text: "使用者姓名",
            ),

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
                fetchpostData();
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