import 'dart:math';

import 'package:flutter/material.dart';
import 'models/char_model.dart';
import 'models/task_model.dart';
import 'package:word_search_safety/word_search_safety.dart';

class TaskWidget extends StatefulWidget {
  const TaskWidget(this.size, this.listQuestions, {super.key});

  final Size size;
  final List<TaskModel> listQuestions;

  @override
  State<TaskWidget> createState() => TaskWidgetState();
}

class TaskWidgetState extends State<TaskWidget> {
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
            padding: const EdgeInsets.all(10),
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
                      const InkWell(
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 45,
                          color: Color(0xFFE86B02),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          generatePuzzle(next: true);
                        },
                        child: const Icon(
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
                    } else if (puzzle.hintShow) {
                      color = Colors.yellow[100];
                    } else if (currentQuestion.isFull) {
                      color = Colors.red;
                    } else {
                      color = const Color(0xFFE86B02);
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
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: constrains.biggest.width / 7 - 6,
                        height: constrains.biggest.height / 7 - 6,
                        margin: const EdgeInsets.all(3),
                        child: Text(
                          (puzzle.currentValue ?? '').toUpperCase(),
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                );
              },
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 40),
            alignment: Alignment.center,
            child: Column(
              children: [
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                    return LayoutBuilder(
                      builder: (context, constraints) {
                        Color color = statusBtn
                            ? const Color(0xFFFBF5F2)
                            : const Color(0xFFE86B02);

                        return Container(
                          decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: constraints.biggest.height,
                            child: TextButton(
                              child: Text(
                                currentQuestion.arrayButtons[index]
                                    .toUpperCase(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {
                                if (!statusBtn) setBtnClick(index);
                              },
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void generatePuzzle({
    List<TaskModel>? loop,
    bool next = false,
    bool left = false,
  }) {
    if (loop != null) {
      currentQuestionIndex = 0;
      listQuestions = [];
      listQuestions.addAll(loop);
    } else {
      if (next && currentQuestionIndex < listQuestions.length - 1) {
        currentQuestionIndex++;
      } else if (left && currentQuestionIndex > 0) {
        currentQuestionIndex--;
      } else if (currentQuestionIndex >= listQuestions.length - 1) {
        return;
      }
      setState(() {});

      if (listQuestions[currentQuestionIndex].isDone) return;
    }

    TaskModel currentQuestion = listQuestions[currentQuestionIndex];

    setState(() {});
    final List<String> answer = [currentQuestion.answer];
  }

  generateHint() async {
    TaskModel currentQues = listQuestions[currentQuestionIndex];

    List<CharModel> puzzleNoHints = currentQues.puzzles
        .where((puzzle) => !puzzle.hintShow && puzzle.currentIndex == null)
        .toList();

    if (puzzleNoHints.isNotEmpty) {
      hintCount++;
      int indexHint = Random().nextInt(puzzleNoHints.length);
      int countTemp = 0;

      currentQues.puzzles = currentQues.puzzles.map((puzzle) {
        if (!puzzle.hintShow && puzzle.currentIndex == null) countTemp++;

        if (indexHint == countTemp - 1) {
          puzzle.hintShow = true;
          puzzle.currentValue = puzzle.correctValue;
          puzzle.currentIndex = currentQues.arrayButtons
              .indexWhere((btn) => btn == puzzle.correctValue);
        }

        return puzzle;
      }).toList();

      if (currentQues.fieldCompleteCorrect()) {
        currentQues.isDone = true;

        setState(() {});

        await Future.delayed(const Duration(seconds: 1));
        generatePuzzle(
          next: true,
        );
      }

      setState(() {});
    }
  }

  Future<void> setBtnClick(int index) async {
    TaskModel currentQues = listQuestions[currentQuestionIndex];

    int currentIndexEmpty =
        currentQues.puzzles.indexWhere((puzzle) => puzzle.currentValue == null);

    if (currentIndexEmpty >= 0) {
      currentQues.puzzles[currentIndexEmpty].currentIndex = index;
      currentQues.puzzles[currentIndexEmpty].currentValue =
          currentQues.arrayButtons[index];

      if (currentQues.fieldCompleteCorrect()) {
        currentQues.isDone = true;

        setState(() {});

        await Future.delayed(const Duration(seconds: 1));
        generatePuzzle(
          next: true,
        );
      }
      setState(() {});
    }
  }
}
