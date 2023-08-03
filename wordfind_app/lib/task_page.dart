import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'char_model.dart';
import 'task_model.dart';
import 'package:word_search_safety/word_search_safety.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/arrow_back.png'),
          onPressed: () {},
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Yesui',
          style: TextStyle(fontSize: 24, color: Color(0xFFE86B02)),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Container()),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(bottom: 10),
              color: Colors.white,
              child: Center(
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xFFE86B02), Color(0xFFFA9541)]),
                      borderRadius: BorderRadius.circular(10)),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    child: Text(
                      'Reloud',
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TaskWidget extends StatefulWidget {
  const TaskWidget(this.size, this.listQuestions, {super.key});
  final Size size;
  final List<TaskModel> listQuestions;

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  late Size size;
  late List<TaskModel> listQuestions;
  int currentQuestionIndex = 0;
  int hintCount = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    size = widget.size;
    listQuestions = widget.listQuestions;
  }

  @override
  Widget build(BuildContext context) {
    TaskModel currentQuestion = listQuestions[currentQuestionIndex];
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: generateHint(),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () => generatePuzzle(left: true),
                      ),
                      InkWell(
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 45,
                          color: Color(0xFFE86B02),
                        ),
                      ),
                      InkWell(
                        onTap: generatePuzzle(next: true),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 45,
                          color: Color(0xFFE86B02),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Container(
              alignment: Alignment.center,
              constraints: BoxConstraints(maxWidth: size.width / 2 * 1.5),
              child: Image.network(
                currentQuestion.pathImage,
                fit: BoxFit.contain,
              ),
            ),
          )),
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Text(
              currentQuestion.question,
              style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFFE86B02),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            alignment: Alignment.center,
            child: LayoutBuilder(
              builder: (context, constrains) {
                return Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: currentQuestion.puzzles.map((puzzle) {
                      Color? color;
                      if (currentQuestion.isDone) {
                        color = Colors.green[300];
                      } else if (puzzle.hintShow = true) {
                        color = Colors.yellow[300];
                      } else if (currentQuestion.isFull) {
                        color = Colors.red;
                      } else {
                        color = Color(0xFFE86B02);
                      }
                      return InkWell(
                        onTap: () {
                          if (puzzle.hintShow || currentQuestion.isDone) return;
                          currentQuestion.isFull = false;
                          puzzle.clearValue();
                          setState(() {});
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: color,
                              borderRadius: BorderRadius.circular(10)),
                          width: constrains.biggest.width / 7 - 6,
                          height: constrains.biggest.height / 7 - 6,
                          margin: EdgeInsets.all(3),
                          child: Text(
                            (puzzle.currentValue ?? '').toUpperCase(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      );
                    }).toList());
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            padding: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 40),
            alignment: Alignment.center,
            child: Row(
              children: [
                GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1,
                      crossAxisCount: 7,
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 4,
                    ),
                    itemCount: 14,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      bool statusBtn = currentQuestion.puzzles.indexWhere(
                              (puzzle) => puzzle.currentIndex == index) >=
                          0;
                      return LayoutBuilder(builder: (context, constraints));
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
