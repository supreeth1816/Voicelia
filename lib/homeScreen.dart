import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';





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
                margin: EdgeInsets.only(left: 28, right: 28),

                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xffe2e2e2), width: 2),
                  borderRadius: BorderRadius.circular(15),

                ),
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    width: w/2,
                    height: 60,
                    child: Row(
                      children: [


                        Text("Speak", style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xfff96e90),
                        ),),
                      ],
                    ),
                  ),

                  Container(
                    //width: w/2,
                    child: Row(
                      children: [

                        Text("Save", style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff808080),
                        ),),
                      ],

                    ),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
