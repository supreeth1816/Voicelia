import 'package:flutter/material.dart';


var finalScoreA1 = 0.0;
var finalScoreA2 = 0.0;
var finalScoreA3 = 0.0;
var finalScoreB1 = 0.0;
var finalScoreB2 = 0.0;
var finalScoreB3 = 0.0;
var finalScoreB4 = 0.0;
var finalScoreC = 0.0;
var finalScoreD = 0.0;
var attemptedquestionsA1 = 0;
var attemptedquestionsA2 = 0;
var attemptedquestionsA3 = 0;
var attemptedquestionsB1 = 0;
var attemptedquestionsB2 = 0;
var attemptedquestionsB3 = 0;
var attemptedquestionsB4 = 0;
var attemptedquestionsC = 0;
var attemptedquestionsD = 0;
var finalscore1=0.0;


var finalscore=[0,0,0,0,0,0,0,0,0];

var questionNumber = 0;
var quiz = new AnimalQuiz();

class AnimalQuiz{
  var images = [
    "alligator", "cat", "dog", "owl"
  ];


  var questions = [

    //domain A1 social-emotional reciprocity

    "X has an unusual approach to people (intrusive touching or licking)",
    "X can use you or others as a tool (i.e. hold your hand and point to things with your hand or use it like attempting to open a door turning the knob with your hand))",
    "It feels like X doesn’t respond when X’s name is called or when X is spoken directly to",
    "It feels like X is having a one-sided conversation with you- as if X is not interested in your side of conversation",
    "X sticks to his agenda in a conversation- often speaking at you or rather over you",
    "X doesn’t add on to a conversation to keep it going or to repair it",
    "X does not attempt to clarify or provide extra background information if not understood",
    "X does not like to share toys, objects (e.g. food) or space (like on a sofa)",
    "X does not show or point out objects to other people to share his interest (e.g. helicopter, airplane in the sky or a train/ bus at a distance)",
    "X does not show interest in displaying his achievements (like a sticker, certificate from school or drawing he has made)",
    "X does not respond to a social smile (smile to a greeting) from a friendly stranger (Note: the focus here is on the response to another person’s smile; other aspects of emotional expression should be considered under A2).",
    "X doesn’t seem to share x’s enjoyment, excitement, achievements with others",
    "When X is happy, X does not seem to share this feeling with others",
    "X doesn’t seem to respond appropriately to praise or a nice compliment about him",
    "X does not show any evidence of happiness or excitement with other children’s excitement or pleasure (like in another child’s birthday party)",
    "X doesn’t seem to offer comfort to others when they are hurt or upset- and would rather ignore or walk away from the situation",
    "X doesn’t look at you for assurance or encouragement",
    "X is indifferent to or dislikes physical contact or show of affection (i.e. a cuddle or a kiss)",
    "X does not show interest in children of his own age and approach them on his own to interact/ play with them, unless compelled to do so",
    "X doesn’t initiate ‘small talk’ or a ‘social chit-chat’ to be friendly",
    "X only initiates interaction to get help from someone",
    "X fails to understand the rules of simple games like taking turns, following others",
    "X does not spontaneously enter the spirit or fun of the game",
    "X does not copy what other children do",
    "X does not seem to imitate people in the family when X was very young (i.e. imitating household chores like mowing the lawn, ironing etc)", //index24


    //domain A2 Non verbal communication

    "X’s facial expressions are limited or are exaggerated in range and mode",
    "X has an unusual approach to people (intrusive touching or licking)",
    "X does not use or understand body postures (i.e. seen to be looking away from someone who is talking to him- or understand that other person is not interested from their body language)",
    "X does not use gestures appropriately (e.g. actions like pointing, waving, nodding/shaking head, beckoning, shushing, putting out hands to ask for something)",
    "X does not understand gestures appropriately (e.g. actions as above)",
    "X does not understand change in tone of voice indicating request to change behaviour",
    "X has an unusual way of talking (abnormal volume, pitch, intonation, rate, rhythm, stress or prosody in speech)",
    "You cannot understand from X’s facial expression what X feels like",
    "X doesn’t show a warm, joyful expression when facing others",
    "X is unable to understand or interpret other’s facial expressions",
    "X has a difficulty in putting together eye contact facial expressions with gestures and body postures (Coordinating non-verbal communication)",
    "X is unable to put together facial expressions, eye contact, gestures and body language to match the words X is coming out with i.e. asking for help or getting other person’s attention to something he is anxious/worried about",
    "X has a difficulty in conveying his thoughts, feelings and emotions using words, facial expressions, tone of voice, gestures and body language (postures)",


    //domain A3 Relationships

    "X doesn't make or sustain friendship like other children of his age",
    "X does not enjoy playing with children of his age or developmental level(choses to play with older or younger than him)",
    "X prefer adult company aver children",
    "X's friends consider him as odd and seem like they are trying to avoid him",
    "X doesn't get invited for play dates/ parties like other children of his age",
    "X does not show an interest in inviting X’s mates for play dates/ or birthday parties",
    "X does not seem to take another person’s perspective (Age ≥ 4 years)",
    "X does not seem to notice that the other person is not interested in an activity/play or a topic of conversation that he wants them to engage in.",
    "X does not notice when he is being teased or ridiculed by others",
    "X does not alter his behaviour according to where he is? (i.e. library vs park)",
    "X does not alter his behaviour with adults in authority or strangers versus family members",
    "X does not understand cues/ prompts from others suggesting that a change in X’s behaviour is expected? (i.e. when becoming over-personal with unfamiliar people)",
    "X shows inappropriate expressions of emotion? (laughing or smiling i.e. when someone is hurt or upset) (note: other abnormalities in the use and understanding of emotion should be considered under A2) ",
    "X is unaware of social conventions or appropriate social behaviour and can ask socially inappropriate questions or make socially inappropriate statements",
    "X does not notice how X’s behaviour affects others emotionally (makes them happy, unhappy OR annoyed) and carries on",
    "X does not engage in pretend play with peers(making up stories and characters within the play)",
    "X does not understand when other children are pretending",
    "X finds it difficult to make friends easily",
    "X does not respond to the social approaches of other children warmly",
    "X does not have preferred friends",
    "X does not enjoy playing in groups of children",
    "X lacks understanding of the rules of and becomes extremely directive and bossy (everything has to be on his agenda)",
    "X’s interaction is limited with others, withdrawn or aloof or ‘in his own world’",
    "X does not try to attract attention of others and would rather remain unnoticed",
    "X would prefer solitary activities /play on X’s own rather than with other children",


    //B1 stereotypes

    "X has pedantic speech or he speaks in an unusually formal precise language (e.g. child speaks like an adult or “little professor” – calls his ‘mum’ mother )",
    "X repeats words, odd phrases, dialogue or more extensive songs that X has heard from surroundings over and over again out of context (echolalia/ perseverative language)? (Note: if to a specific topic, then consider B3)",
    "X comes out with gibberish or ‘jargon’ (mature jargoning after age of 24 months)",
    "X uses language that has some meaning only to those who know X and who are used to X’s way of talking (idiosyncratic language)",
    "X uses made up words (neologisms) in his conversations",
    "X says “he, she for I” OR “You for I” (pronoun reversal)",
    "X refers to himself by own name (does not use “I”)",
    "X goes around making unusual guttural noises, unusual squealing, repetitive humming or intonational noises (repetitive vocalisations or noises):",
    "X displays finger flicking, flapping or twisting his hands (Repetitive purposeless hand movements)",
    "X shows unusual whole body movements like toe walking, foot to foot rocking, dipping & swaying, spinning (Stereotyped or complex whole body movements)",
    "X is seen to display grimacing, teeth grinding, intense body tensing, clenching",
    "X shows perseverative or purposeless repetitive action, play or behaviour",
    "X waves sticks or drops items (Nonfunctional play with objects), opens and shuts doors or turns lights on and off",
    "X lines up toys or objects",


    //B2 Rigid routines / rituals

    "X has unusual routines- specific, multiple-step sequences of behaviour. Please describe in the comment box",
    "X insists on rigidly following specific routines. Please describe in the comment box",
    "X has repetitive questioning about a particular topic. Please describe in the comment box.",
    "X has certain unusual compulsive ritualistic behaviour (e.g. insistence on turning in a circle three times before entering a room) Please describe in the comment box.",
    "X is excessively rigid, inflexible, or rule-bound in behaviour- that X insists that you do it in a particular way or order. Please describe in the comment box.",
    "X doesn’t like food being mixed or touching each other",
    "X has a difficulty in moving from one activity/conversation/environment that X is engaged in to another one (transitions) that is out of range of what is seen in children of that age ",
    "X shows an overreaction to little changes in environment (moving items at dinner table, furniture or driving an alternate route) that should not generally affect other children",
    "X takes things literally (Unable to understand humour, irony or implied meaning)",
    "X has an immense sense of justice and can’t tolerate slightest of change to it",
    "X cannot tolerate sudden change of plans and needs constant updating",


    //B3 Fixated Interests

    "X has certain interests/ hobbies that are so strong that interferes with his/your life.Please describe in the comment box.",
    "X is focused on the same few objects, topics or activities. Please describe in the comment box.",
    "X has an unusual preoccupation with numbers, letters, symbols.",
    "X can be overly perfectionistic and finds it difficult to cope with failures",
    "X has interests that are unusual and abnormal in focus (i.e. traffic lights, escalators, lifts).",
    "X can excessively focus on non-relevant or nonfunctional parts of objects (like wheels of toy car) Please describe in the comment box",
    "X has unusual preoccupations (e.g. color; time tables; historical events, etc)?",
    "X is overtly attached to unusual inanimate object (e.g., piece of string, stone, stick or rubber band)?",
    "X notices trivia or little things rather than seeing the big picture",


    //B4 Reactivity sensory stimulus

    "X is sensitive to feel of certain objects or textures: labels, woolen clothes, tights",
    "X has significant aversion to having hair or toenails cut or teeth brushed",
    "X doesn’t like the feel of certain food stuff in his mouth:",
    "X is seen to closely inspect objects or self for no clear purpose (for example, holding things at unusual angles) (not due to visual impairment) OR look at people out of the corner of their eyes or squinting at them.",
    "X has an unusual fascination with watching movement of things (e.g., spinning wheels of toys, the opening and closing of doors, electric fan or other rapidly revolving object)",
    "X becomes extremely distressed by atypical/ loud sudden noises (traffic, siren, drill, hand dryers etc)",
    "X can differentiate subtle change in the taste (e.g.brand change) of food given to him",
    "X is found licking or sniffing objects before tasting",


    //C Symptoms must be present in early childhood(but may not become fully manifest until social demands exceeds limited capacities)

    "You were concerned that something wasn’t quite right about X before the age of 8",



    //D Symptoms together limit
    "The symptoms above does affect X’s daily life and performance"

  ]
  ;


  var choices = [

    "Never Seen an Issue",

    "Was an Issue , Not Anymore",

    "Ocassionally to Frequently",

    "Very Frequently"

  ];



}

class Quiz1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new Quiz1State();
  }
}

class Quiz1State extends State<Quiz1> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(

          body: new Container(
            margin: const EdgeInsets.all(10.0),
            alignment: Alignment.topCenter,
            child: new Column(
              children: <Widget>[
                new Padding(padding: EdgeInsets.all(20.0)),

                new Container(
                  alignment: Alignment.centerRight,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      new Text("Question ${questionNumber + 1} of ${quiz.questions.length}",
                        style: new TextStyle(
                            fontSize: 18.0
                        ),),


                    ],
                  ),
                ),


                //image
                new Padding(padding: EdgeInsets.all(20.0)),

//                new Image.asset(
//                  "images/${quiz.images[questionNumber]}.jpg",
//                ),

                new Padding(padding: EdgeInsets.all(20.0)),

                new Text(quiz.questions[questionNumber],
                  style: new TextStyle(
                    fontSize: 20.0,
                  ),),

                new Padding(padding: EdgeInsets.all(10.0)),



                //button 1
                //never seen an issue 0

                new MaterialButton(

                  minWidth: 120.0,
                  color: Colors.blueGrey,
                  onPressed: (){

                    if(questionNumber < 25){
                      attemptedquestionsA1++;
                    }else if (questionNumber <38) {
                      attemptedquestionsA2++;
                    }else if (questionNumber < 63) {
                      attemptedquestionsA3++;
                    }else if (questionNumber < 77) {
                      attemptedquestionsB1++;
                    }else if (questionNumber < 88) {
                      attemptedquestionsB2++;
                    }else if (questionNumber < 97) {
                      attemptedquestionsB3++;
                    }else if (questionNumber < 105) {
                      attemptedquestionsB4++;
                    }

//                        if(quiz.choices[questionNumber][0] == quiz.correctAnswers[questionNumber]){
//                          debugPrint("Correct");
//                          finalScore++;
//                        }else{
//                          debugPrint("Wrong");
//                        }

                    updateQuestion();
                  },
                  child: new Text(quiz.choices[0],
                    style: new TextStyle(
                        fontSize: 10.0,
                        color: Colors.white
                    ),),
                ),

                new Padding(padding: EdgeInsets.all(10.0)),

                //button 2
                //Was an Issue , Not Anymore 1
                new MaterialButton(

                  //
                  minWidth: 120.0,
                  color: Colors.blueGrey,
                  onPressed: (){

                    if(questionNumber < 25){

                      finalScoreA1+=1;
                      attemptedquestionsA1++;

                    }else if (questionNumber <38) {
                      finalScoreA2+=1;
                      attemptedquestionsA2++;
                    }else if (questionNumber < 63) {
                      finalScoreA3+=1;
                      attemptedquestionsA3++;
                    }else if (questionNumber < 77) {
                      finalScoreB1+=1;
                      attemptedquestionsB1++;
                    }else if (questionNumber < 88) {
                      finalScoreB2+=1;
                      attemptedquestionsB2++;
                    }else if (questionNumber < 97) {
                      finalScoreB3+=1;
                      attemptedquestionsB3++;
                    }else if (questionNumber < 105) {
                      finalScoreB4+=1;
                      attemptedquestionsB4++;
                    }else if (questionNumber == 105) {
                      finalScoreC = 1;
                    }else if (questionNumber == 106) {
                      finalScoreD = 1;
                    }

                    updateQuestion();

                  },
                  child: new Text(quiz.choices[1],
                    style: new TextStyle(
                        fontSize: 10.0,
                        color: Colors.white
                    ),),
                ),

                new Padding(padding: EdgeInsets.all(10.0)),

                //button 3
                //"Ocassionally to Frequently" 2
                new MaterialButton(
                  minWidth: 120.0,
                  color: Colors.blueGrey,
                  onPressed: (){

                    if(questionNumber < 25){
                      finalScoreA1+=2;
                      attemptedquestionsA1++;
                    }else if (questionNumber <38) {
                      finalScoreA2+=2;
                      attemptedquestionsA2++;
                    }else if (questionNumber < 63) {
                      finalScoreA3+=2;
                      attemptedquestionsA3++;
                    }else if (questionNumber < 77) {
                      finalScoreB1+=2;
                      attemptedquestionsB1++;
                    }else if (questionNumber < 88) {
                      finalScoreB2+=2;
                      attemptedquestionsB2++;
                    }else if (questionNumber < 97) {
                      finalScoreB3+=2;
                      attemptedquestionsB3++;
                    }else if (questionNumber < 105) {
                      finalScoreB4+=2;
                      attemptedquestionsB4++;
                    }else if (questionNumber == 105) {
                      finalScoreC = 2;
                    }else if (questionNumber == 106) {
                      finalScoreD = 2;
                    }

                    updateQuestion();
                  },
                  child: new Text(quiz.choices[2],
                    style: new TextStyle(
                        fontSize: 10.0,
                        color: Colors.white
                    ),),
                ),
                new Padding(padding: EdgeInsets.all(10.0)),
                //button 4
                //Very Frequently 3
                new MaterialButton(
                  minWidth: 120.0,
                  color: Colors.blueGrey,
                  onPressed: (){

                    if(questionNumber < 25){
                      finalScoreA1+=3;
                      attemptedquestionsA1++;
                    }else if (questionNumber <38) {
                      finalScoreA2+=3;
                      attemptedquestionsA2++;
                    }else if (questionNumber < 63) {
                      finalScoreA3+=3;
                      attemptedquestionsA3++;
                    }else if (questionNumber < 77) {
                      finalScoreB1+=3;
                      attemptedquestionsB1++;
                    }else if (questionNumber < 88) {
                      finalScoreB2+=3;
                      attemptedquestionsB2++;
                    }else if (questionNumber < 97) {
                      finalScoreB3+=3;
                      attemptedquestionsB3++;
                    }else if (questionNumber < 105) {
                      finalScoreB4+=3;
                      attemptedquestionsB4++;
                    }else if (questionNumber == 105) {
                      finalScoreC = 3;
                    }else if (questionNumber == 106) {
                      finalScoreD = 3;
                    }

                    updateQuestion();

                  },
                  child: new Text(quiz.choices[3],
                    style: new TextStyle(
                        fontSize: 10.0,
                        color: Colors.white
                    ),),
                ),



                new Padding(padding: EdgeInsets.all(10.0)),

                new Container(
                    alignment: Alignment.bottomCenter,
                    child:  new MaterialButton(
                        minWidth: 240.0,
                        height: 30.0,
                        color: Colors.red,
                        onPressed: resetQuiz,
                        child: new Text("Quit",
                          style: new TextStyle(
                              fontSize: 8.0,
                              color: Colors.white
                          ),)
                    )
                ),




              ],
            ),
          ),

        )
    );
  }

  void resetQuiz(){
    setState(() {
      Navigator.pop(context);
      finalscore1 = 0.0;
      questionNumber = 0;
    });
  }



  void updateQuestion(){
    setState(() {
      if(questionNumber == quiz.questions.length - 1){

        finalScoreA1 = finalScoreA1/ attemptedquestionsA1;
        finalScoreA2 = finalScoreA2/ attemptedquestionsA2;
        finalScoreA3 = finalScoreA3/ attemptedquestionsA3;
        finalScoreB1 = finalScoreB1/ attemptedquestionsB1;
        finalScoreB2 = finalScoreB2/ attemptedquestionsB2;
        finalScoreB3 = finalScoreB3/ attemptedquestionsB3;
        finalScoreB4 = finalScoreB4/ attemptedquestionsB4;

        finalscore1 = (finalScoreA1 + finalScoreA2 + finalScoreA3 + finalScoreB1 + finalScoreB2 + finalScoreB3 + finalScoreB4 + finalScoreC + finalScoreD) / 9;

        Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Summary(score: finalscore1,scoreA1: finalScoreA1,scoreA2: finalScoreA2,scoreA3: finalScoreA3,
            scoreB1: finalScoreB1,scoreB2: finalScoreB2,scoreB3: finalScoreB3,scoreB4: finalScoreB4,scoreC: finalScoreC,scoreD: finalScoreD)));

      }else{
        questionNumber++;
      }
    });
  }
}


class Summary extends StatelessWidget{
  final double score;
  final double scoreA1;
  final double scoreA2;
  final double scoreA3;
  final double scoreB1;
  final double scoreB2;
  final double scoreB3;
  final double scoreB4;
  final double scoreC;
  final double scoreD;

  Summary({Key key, @required this.score,this.scoreA1,this.scoreA2,this.scoreA3,this.scoreB1,this.scoreB2,this.scoreB3,this.scoreB4,this.scoreC,this.scoreD}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(

        body: new Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new Text("Final Score: $score",
                style: new TextStyle(
                    fontSize: 35.0
                ),),

              new Text("Final Score: $scoreA1",
                style: new TextStyle(
                    fontSize: 35.0
                ),),
              new Text("Final Score: $scoreA2",
                style: new TextStyle(
                    fontSize: 35.0
                ),),
              new Text("Final Score: $scoreA3",
                style: new TextStyle(
                    fontSize: 35.0
                ),),



              new Padding(padding: EdgeInsets.all(30.0)),

              new MaterialButton(
                color: Colors.red,
                onPressed: (){
                  questionNumber = 0;
                  finalscore1 = 0.0;
                  Navigator.pop(context);
                },
                child: new Text("Reset Quiz",
                  style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                  ),),)

            ],
          ),
        ),


      ),
    );
  }


}