import 'package:bangla_quiz/view/Islamic%20Quiz/Level%201/question_page2.dart';
import 'package:flutter/material.dart';

class QuestionPage1 extends StatefulWidget {
  const QuestionPage1({super.key});

  @override
  State<QuestionPage1> createState() => _QuestionPage1State();
}

class _QuestionPage1State extends State<QuestionPage1> {
  int counterSeconds = 30;

  @override
  void initState() {
    setTimer();
    super.initState();
  }

  void setTimer() async {
    Future.delayed(const Duration(seconds: 1)).then((value) {
      print("--------$counterSeconds-------");
      setState(() {
        if (counterSeconds > 0) {
          counterSeconds--;
          setTimer();
        } else {
          print("--------End--------");
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const QuestionPage2()));
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              decoration: const BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                  )),
              child: const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text("Bangla Quiz",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  SizedBox(
                    width: 108,
                  ),
                  Text(
                    "1/10",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.lightGreen,
                      child: Text(
                        "Q/A",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 55,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/image/watch-removebg-preview.png"))),
                  ),
                  Text(
                    counterSeconds.toString(),
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 120,
              width: 335,
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(30)),
              child: const Center(
                  child: Text(
                    "ইসলামের প্রথম নবী কে?",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 65,
              width: 300,
              decoration: const BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: const Center(
                  child: Text("হযরত আদম (আঃ)",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 65,
              width: 300,
              decoration: const BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: const Center(
                  child: Text("হযরত নূহ (আঃ)",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 65,
              width: 300,
              decoration: const BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: const Center(
                  child: Text("হযরত মুহাম্মদ (সঃ)",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 65,
              width: 300,
              decoration: const BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: const Center(
                  child: Text("হযরত ইবরাহীম (আঃ)",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                counterSeconds = 0;
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const QuestionPage2()));
              },
              child: Container(
                height: 50,
                width: 220,
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                    child: Text(
                      "Next",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomCircleAvater {}

// class _QuestionPage1State extends State<QuestionPage1> {
//   bool check = false;
//   bool check1 = false;
//   bool check2 = false;
//   bool check3 = false;
//   int counter_seconds = 10;
//
//   void initState() {
//     setTimer();
//     super.initState();
//   }
//
//   void setTimer() async {
//     Future.delayed(Duration(seconds: 1)).then((value) {
//       print("--------$counter_seconds-------");
//       setState(() {
//         if (counter_seconds > 0) {
//           counter_seconds--;
//           setTimer();
//         } else {
//           print("--------End--------");
//           Navigator.push(context,
//               MaterialPageRoute(builder: (context) => QuestionPage2()));
//         }
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: 50,
//               ),
//               CustomCircleAvater(counter_seconds: counter_seconds),
//               Card(
//                 margin: EdgeInsets.only(top: 30),
//                 elevation: 10,
//                 shadowColor: Colors.black,
//                 child: Container(
//                   height: 100,
//                   width: 350,
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(20)),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Text(
//                         "?",
//                         style: TextStyle(
//                             fontSize: 35,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.deepOrangeAccent),
//                       ),
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             "আল্লাহকে একক সত্বা হিসে ",
//                             style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.deepOrange),
//                           ),
//                           Text(
//                             "স্বীকার ও বিশ্বাস করাকে কি বলে?",
//                             style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.deepOrange),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               Card(
//                 elevation: 10,
//                 shadowColor: Colors.black,
//                 margin: EdgeInsets.only(top: 20),
//                 child: Container(
//                   height: 300,
//                   width: 350,
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(20)),
//                   child: Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Row(
//                           children: [
//                             Checkbox(
//                                 activeColor: Colors.blue,
//                                 checkColor: Colors.black,
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(7)),
//                                 value: check,
//                                 onChanged: (c) {
//                                   check = c!;
//                                   setState(() {});
//                                 }),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               "তাওহিদ।",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 20,
//                                   color: Colors.deepOrange),
//                             )
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Checkbox(
//                                 activeColor: Colors.blue,
//                                 checkColor: Colors.black,
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(7)),
//                                 value: check1,
//                                 onChanged: (c) {
//                                   check1 = c!;
//                                   setState(() {});
//                                 }),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               "আকাঈদ।।",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 20,
//                                   color: Colors.deepOrange),
//                             )
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Checkbox(
//                                 activeColor: Colors.blue,
//                                 checkColor: Colors.black,
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(7)),
//                                 value: check2,
//                                 onChanged: (c) {
//                                   check2 = c!;
//                                   setState(() {});
//                                 }),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               "রিসালাত।।",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 20,
//                                   color: Colors.deepOrange),
//                             )
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Checkbox(
//                                 activeColor: Colors.blue,
//                                 checkColor: Colors.black,
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(7)),
//                                 value: check3,
//                                 onChanged: (c) {
//                                   check3 = c!;
//                                   setState(() {});
//                                 }),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               "নবুইয়্যত।।",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 20,
//                                   color: Colors.deepOrange),
//                             )
//                           ],
//                         ),
//                         InkWell(
//                           onTap: () {
//                             counter_seconds = -1;
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => SplashScreen3()));
//                           },
//                           child: Container(
//                             height: 40,
//                             width: 260,
//                             decoration: BoxDecoration(
//                                 color: Colors.deepOrange,
//                                 borderRadius: BorderRadius.circular(20)),
//                             child: Center(
//                               child: Text(
//                                 "সাবমিট করুন",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 20,
//                                     color: Colors.white),
//                               ),
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }