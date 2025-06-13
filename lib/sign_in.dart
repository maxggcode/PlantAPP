import 'package:flutter/material.dart';
import 'main_page.dart';

class sign_in extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return sign_instate(); 
  }
}

class sign_instate extends State<sign_in>{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 300,
              child: Text(
                "名稱：",
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

            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 300,
              child: Text(
                "名稱：",
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


            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(builder: (context) => main_page()),
                );
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