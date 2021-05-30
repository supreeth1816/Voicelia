import 'package:flutter/material.dart';
import 'package:voicelia/homeScreen.dart';
import 'package:google_fonts/google_fonts.dart';


class SpeechScreen extends StatefulWidget {
  @override
  _SpeechScreenState createState() => _SpeechScreenState();
}

class _SpeechScreenState extends State<SpeechScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SafeArea(
        child: Container(

          child: Column(
            children: [

             SizedBox(height: 20,),
              Row(
                children: [

                  GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen())),
                    child: Container(
                      padding: EdgeInsets.only(left: 16),

                      child: Icon(Icons.arrow_back_ios_outlined, color: Color(
                        0xffc9496a),),),
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 0, left: 20),
                    //width: double.infinity,
                    child: Text("Voicelia",
                      style: GoogleFonts.satisfy(
                          fontSize: 30,
                          color: Color(0xfff06083)

                      ),),
                  ),
                ],
              ),

              SizedBox(height: 28,),

              Container(
                height: 186,
                width: double.infinity,
                margin: EdgeInsets.only(left: 24, right: 24),

                decoration: BoxDecoration(
                  color: Color(0xffffe9eb),

                  borderRadius: BorderRadius.circular(15),

                ),
                padding: EdgeInsets.all(20),

                child: Text(
                  EnteredText,
                  style: GoogleFonts.poppins(
                      fontSize: 17,
                      color: Color(0xffCA5764)
                  ),
                  ),
                ),




            ],
          ),
        ),
      ),
    );
  }
}



