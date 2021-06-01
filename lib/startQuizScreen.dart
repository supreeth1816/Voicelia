import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voicelia/autismTest.dart';
import 'package:voicelia/homeScreen.dart';


String NameText = "User";
String AgeText = "14";


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

            SizedBox(height: 328,),

            Container(
              height: 72,
              margin: EdgeInsets.only(left: 24, right: 24),

              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xffe2e2e2), width: 2),
                borderRadius: BorderRadius.circular(15),

              ),
              padding: EdgeInsets.all(20),

              child: TextField(
                maxLines: 1,
                decoration: InputDecoration.collapsed(
                    hintText: "Enter Name ", hintStyle: GoogleFonts.poppins(
                  fontSize: 17,
                )),
                style: GoogleFonts.poppins(
                    fontSize: 17,
                    color: Color(0xff3a3a3a)
                ),

                onChanged: (val){
                  setState(() {
                    NameText = val;
                  });
                },
              ),
            ),

            SizedBox(height: 20),

            Container(
              height: 72,
              margin: EdgeInsets.only(left: 24, right: 24),

              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xffe2e2e2), width: 2),
                borderRadius: BorderRadius.circular(15),

              ),
              padding: EdgeInsets.all(20),

              child: TextField(
                maxLines: 1,
                decoration: InputDecoration.collapsed(
                    hintText: "Enter Age ", hintStyle: GoogleFonts.poppins(
                  fontSize: 17,
                )),
                style: GoogleFonts.poppins(
                    fontSize: 17,
                    color: Color(0xff3a3a3a)
                ),

                onChanged: (val){
                  setState(() {
                    AgeText = val;
                  });
                },
              ),
            ),

            SizedBox(height: 100),

            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz1())),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

                  color: Color(0xffea5f82),
                ),
                width: 340,
                height: 48,
                child: Center(child: Text("Start Autism Test", style: GoogleFonts.poppins(
                  color:  Colors.white,
                  fontWeight: FontWeight.w600,
                ),)),

              ),
            ),
            SizedBox(height: 5,),
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen())),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

                  color: Colors.transparent,
                ),
                width: 340,
                height: 48,
                child: Center(child: Text("Exit", style: GoogleFonts.poppins(
                  color:  Colors.grey,
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
