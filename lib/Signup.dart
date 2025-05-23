import 'package:flutter/material.dart';

class SignUp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SignUpstate(); 
  }
}

class _SignUpstate extends State<SignUp>{
  var name_controler=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("名稱："),
          TextField(
            controller: name_controler,
          ),
        ],
      ),
    );
  }
}