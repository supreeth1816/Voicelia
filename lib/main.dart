import 'package:flutter/material.dart';
import 'package:voicelia/autismTest.dart';
import 'package:voicelia/homeScreen.dart';

void main(){
  runApp(
      new MaterialApp(
        debugShowCheckedModeBanner: false,

        home: new StartScreen(),

      )
  );
}


class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffea5f82),
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 220,),

              Image(image: AssetImage('assets/LaunchLogo.png'),
              height: 238,),
              SizedBox(height: 240,),

              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen())),
                child: Container(
                  width: 340,
                  height: 48,
                  color: Colors.white,
                  child: Center(child: Text("Get Started")),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}



