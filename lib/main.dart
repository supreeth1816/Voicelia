import 'package:flutter/material.dart';
import 'package:voicelia/autismTest.dart';

void main(){
  runApp(
      new MaterialApp(
        debugShowCheckedModeBanner: false,

        home: new HomeScreen(),

      )
  );
}


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              height: 238,)
            ],
          ),
        ),
      ),
    );
  }
}



