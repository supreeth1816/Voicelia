import 'package:flutter/material.dart';
import 'package:voicelia/homeScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:lottie/lottie.dart';

import 'dart:async';

final FlutterTts flutterTts = FlutterTts();

speak() async {

  await flutterTts.speak(EnteredText);
}


//enum TtsState { playing, stopped }

class SpeechScreen extends StatefulWidget {
  @override
  _SpeechScreenState createState() => _SpeechScreenState();
}

class _SpeechScreenState extends State<SpeechScreen> {





  // dynamic languages;
  // String language;
  // double volume = 0.5;
  // double pitch = 1.0;
  // double rate = 0.5;
  // TtsState ttsState = TtsState.stopped;
  //
  // get isPlaying => ttsState == TtsState.playing;
  // get isStopped => ttsState == TtsState.stopped;


  @override
  initState() {
    super.initState();
    speak();
    //initTts();

  }

  // initTts() {
  //   flutterTts = FlutterTts();
  //   _getLanguages();
  //   flutterTts.setStartHandler(() {
  //     setState(() {
  //       print("playing");
  //       ttsState = TtsState.playing;
  //     });
  //   });
  //
  //   flutterTts.setCompletionHandler(() {
  //     setState(() {
  //       print("Complete");
  //       ttsState = TtsState.stopped;
  //     });
  //   });
  //
  //   flutterTts.setErrorHandler((msg) {
  //     setState(() {
  //       print("error: $msg");
  //       ttsState = TtsState.stopped;
  //     });
  //   });
  // }

  // Future _getLanguages() async {
  //   languages = await flutterTts.getLanguages;
  //   print("languages:  ${languages}");
  //   if (languages != null) setState(() => languages);
  // }
  //
  // Future _speak() async {
  //   await flutterTts.setVolume(volume);
  //   await flutterTts.setSpeechRate(rate);
  //   await flutterTts.setPitch(pitch);
  //
  //   if (EnteredText != null) {
  //     if (EnteredText.isNotEmpty) {
  //       var result = await flutterTts.speak(EnteredText);
  //       if (result == 1) setState(() => ttsState = TtsState.playing);
  //     }
  //   }
  // }
  //
  // Future _stop() async {
  //   var result = await flutterTts.stop();
  //   if (result == 1) setState(() => ttsState = TtsState.stopped);
  // }
  //
  // @override
  // void dispose() {
  //   super.dispose();
  //   flutterTts.stop();
  // }
  //
  // List<DropdownMenuItem<String>> getLanguageDropDownMenuItems() {
  //   var items = List<DropdownMenuItem<String>>();
  //   for (String type in languages) {
  //     items.add(DropdownMenuItem(value: type, child: Text(type)));
  //   }
  //   return items;
  // }
  //
  // void changedLanguageDropDownItem(String selectedType) {
  //   setState(() {
  //     language = selectedType;
  //     flutterTts.setLanguage(language);
  //   });
  // }

  void _onChange(String text) {
    setState(() {
      EnteredText = text;
    });
  }




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

                      child: Icon(Icons.arrow_back_ios_outlined, color: Colors.black26,),),
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
                padding: EdgeInsets.only(left: 24, right: 24, top: 28, bottom: 26),

                child: Text(
                  EnteredText,
                  style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffCA5764)
                  ),
                  ),
                ),

              GestureDetector(
                onTap: speak,

                child: Container(
                  child: Text("Play"),
                ),
              ),


              SizedBox(height: 40,),

              Lottie.asset('assets/speaking.json',
              repeat: false,
              ),








            ],
          ),
        ),
      ),
    );
  }
}



