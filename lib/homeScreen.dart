import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 20,),

              Container(
                padding: EdgeInsets.only(top: 0, left: 36),
                width: double.infinity,
                child: Text("Voicelia",
                style: GoogleFonts.satisfy(
                  fontSize: 30,
                  color: Color(0xfff06083)

                ),),
              ),

              SizedBox(height: 38,),

              Container(
                height: 186,
                margin: EdgeInsets.only(left: 28, right: 28),

                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(15),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
