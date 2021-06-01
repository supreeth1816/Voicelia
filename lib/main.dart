import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
              SizedBox(height: 120),
              Text(" MGT1022 - LSM PROJECT ",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 0,),
              Text(" Team #2 ",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 40,),

              Image(image: AssetImage('assets/LaunchLogo.png'),
              height: 238,),
              SizedBox(height: 0,),
              Text(" Autism Therapy Application ",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 14
              ),
              ),



              SizedBox(height: 220,),

              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen())),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),

                    color: Colors.white,
                  ),
                  width: 340,
                  height: 48,
                  child: Center(child: Text("Get Started", style: GoogleFonts.poppins(
                    color:  Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),)),

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}



