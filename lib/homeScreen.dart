import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voicelia/autismTest.dart';
import 'package:voicelia/speechScreen.dart';
import 'package:voicelia/startQuizScreen.dart';


String EnteredText;


class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;


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

              SizedBox(height: 28,),

              Container(
                height: 186,
                margin: EdgeInsets.only(left: 24, right: 24),

                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xffe2e2e2), width: 2),
                  borderRadius: BorderRadius.circular(15),

                ),
                padding: EdgeInsets.all(20),

                child: TextField(
                  maxLines: 6,
                  decoration: InputDecoration.collapsed(
                      hintText: "Enter your text here ", hintStyle: GoogleFonts.poppins(
                    fontSize: 17,
                  )),
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    color: Color(0xff3a3a3a)
                  ),

                  onChanged: (val){
                    setState(() {
                      EnteredText = val;
                    });
                  },
                ),
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SpeechScreen()));
                      print(EnteredText);
                    },
                    child: Container(
                      width: w/2,
                      height: 60,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 10,),
                          Image(image: AssetImage('assets/Mic.png')),
                          SizedBox(width: 10,),

                          Text("Speak", style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xfff96e90),
                          ),),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    //width: w/2,
                    child: Row(
                      children: [
                        Image(image: AssetImage('assets/save.png')),
                        SizedBox(width: 10,),

                        Text("Save", style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff808080),
                        ),),
                        SizedBox(width: 10,),
                      ],

                    ),
                  ),

                ],
              ),

              SizedBox(height: 24,),

              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => StartQuiz())),
                child: Container(
                  margin: EdgeInsets.only(left: 24, right: 24),

                  child: Image(image: AssetImage('assets/AutismTestCard.png'),),
                ),
              ),

              SizedBox(height: 24,),

              Container(
                margin: EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Image(image: AssetImage('assets/KnowAboutAutismCard.png'),
                    height: 204,),
                    SizedBox(width: 24,),
                    Image(image: AssetImage('assets/AutismTherapyCard.png'),height: 204,),

                  ],
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
