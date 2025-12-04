import 'package:flutter/material.dart';
import 'package:my_quiz_app/View/Islamic%20Quiz/Level%202/level_2_question_page1.dart';



class Level3QuestionPage1 extends StatefulWidget {
  const Level3QuestionPage1({super.key});

  @override
  State<Level3QuestionPage1> createState() => _Level3QuestionPage1State();
}

class _Level3QuestionPage1State extends State<Level3QuestionPage1> {
  int counterSeconds = 30;
  bool _isRed = true;

  void _toggleColor() {
    setState(() {
      _isRed = !_isRed;
    });
  }

  @override
  void initState() {
    setTimer();
    super.initState();
  }

  void setTimer() async {
    Future.delayed(const Duration(seconds: 1)).then((value) {
      setState(() {
        if (counterSeconds > 0) {
          counterSeconds--;
          setTimer();
        } else {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const L2QuestionPage1()));
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                color: Colors.indigo, borderRadius: BorderRadius.circular(30)),
            child: const Center(
                child: Text(
                  "ইসলামের পঞ্চম স্তম্ভ কোনটি?",
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
                child: Text("নামাজ",
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
                child: Text("রোজা",
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
                child: Text("যাকাত",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: _toggleColor,
            child: Container(
              height: 65,
              width: 300,
              decoration: BoxDecoration(
                  color: _isRed ? Colors.indigo : Colors.green,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: const Center(
                  child: Text("হজ্জ",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Level3QuestionPage1()));
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
    );
  }
}