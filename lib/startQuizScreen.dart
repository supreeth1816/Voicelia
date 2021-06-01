

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voicelia/autismTest.dart';

class StartQuiz extends StatefulWidget {
  @override
  _StartQuizState createState() => _StartQuizState();
}

class _StartQuizState extends State<StartQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          children: [
            Container(

              child: Image(image: AssetImage('assets/AutismTestCard.png'),),
            ),

            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz1())),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

                  color: Colors.pink,
                ),
                width: 340,
                height: 48,
                child: Center(child: Text("Start Quiz", style: GoogleFonts.poppins(
                  color:  Colors.white,
                  fontWeight: FontWeight.w600,
                ),)),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
