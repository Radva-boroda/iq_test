import 'package:flutter/material.dart';
import 'package:iq_test/common/localization/generated/l10n.dart';
import 'package:iq_test/common/theme/color_constants.dart';
import 'package:iq_test/common/theme/constants_image.dart';
import 'package:iq_test/common/widgets/border_radius_constants.dart';
import 'package:iq_test/features/quize/widgets/answer_button.dart';
import 'package:iq_test/features/result/page/result_page.dart';

class QuizePage extends StatefulWidget {
  const QuizePage({Key? key}) : super(key: key);

  static int showQuestionIndex = 0;
  static int choosedAnswer = 3;
  static String resultText = '';

  @override
  State<QuizePage> createState() => _QuizePageState();
}

class _QuizePageState extends State<QuizePage> {
  String resultText = '';
  int correctAnswersCount = 0;
  int questionsNumber = 1;
  bool isBeforeButtonVisible = false;
  bool isNextButtonVisible = true;
  bool isFinishButtonVisible = false;
  bool showQuestionsNumber = true;

  void ButtonVisibleView() {
    setState(() {
      if (questionsNumber == 20) {
        isNextButtonVisible = false;
        isBeforeButtonVisible = false;
      }
      if (questionsNumber < 20) {
        isNextButtonVisible = true;
      }
      if (questionsNumber > 1) {
        isBeforeButtonVisible = true;
      } else {
        isBeforeButtonVisible = false;
      }
    });
  }

  void ChangeQusetions() {
    setState(() {
      if (questionsNumber == 20) {
        isNextButtonVisible = false;
        Navigator.of(context).pop();
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ResultPage(
              correctAnswersCount: correctAnswersCount,
              resultText: resultText,
            ),
          ),
        );
        QuizePage.showQuestionIndex = 0;
        resultNumber();
      } else {
        QuizePage.showQuestionIndex++;
        questionsNumber++;
        isBeforeButtonVisible = true;
      }
    });
  }

  Image checkCorrectAnswer(index) {
    if (QuizePage.choosedAnswer == getQuestionsList()[QuizePage.showQuestionIndex].correctAnswer) {
      print('True');
      return getQuestionsList()[QuizePage.showQuestionIndex].answerList![index];
    } else {
      print('False');
      return getQuestionsList()[QuizePage.showQuestionIndex].answerList![index];
    }
  }

  void resultNumber() {
    if (questionsNumber == 20) {
      correctAnswersCount = correctAnswersCount * 6 + 40;
      if (correctAnswersCount <= 70) {
        resultText = L10n.of(context).aVeryWeakResult;
      }
      if (correctAnswersCount <= 80 && correctAnswersCount > 70) {
        resultText = L10n.of(context).weak;
      }
      if (correctAnswersCount <= 90 && correctAnswersCount > 80) {
        resultText = L10n.of(context).lowLevel;
      }
      if (correctAnswersCount <= 110 && correctAnswersCount > 90) {
        resultText = L10n.of(context).average;
      }
      if (correctAnswersCount <= 120 && correctAnswersCount > 110) {
        resultText = L10n.of(context).clever;
      }
      if (correctAnswersCount <= 130 && correctAnswersCount > 120) {
        resultText = L10n.of(context).verySmart;
      }
      if (correctAnswersCount <= 145 && correctAnswersCount > 130) {
        resultText = L10n.of(context).hyperSmart;
      }
      if (correctAnswersCount > 145) {
        resultText = L10n.of(context).genius;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    if (QuizePage.choosedAnswer == getQuestionsList()[QuizePage.showQuestionIndex].correctAnswer) {
      correctAnswersCount++;
    }
    return WillPopScope(
      onWillPop: () async {
        return await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(
              L10n.of(context).areYouSureYouWantToExitTheTest,
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => Navigator.of(context).pop(false),
                    child: Container(
                      width: 60,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: ColorConstants.ColorRed_C4,
                        borderRadius: BorderRadiusConstants.circular16
                      ),
                      child: Text(
                        L10n.of(context).no,
                        style: textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop(true);
                      setState(() {
                        QuizePage.showQuestionIndex = 0;
                        correctAnswersCount = 0;
                      });
                    },
                    child: Container(
                      width: 60,
                      height: 30,
                      decoration: BoxDecoration(
                        color: ColorConstants.ColorBlue_5D,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        L10n.of(context).yes,
                        style: textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(color: ColorConstants.ColorBlack_10,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        L10n.of(context).iqTest,
                        style: textTheme.headlineSmall,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      Container(
                        width: 230,
                        height: 230,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadiusConstants.circular16,
                        ),
                        child: getQuestionsList()[QuizePage.showQuestionIndex].question,
                      ),
                      const SizedBox(height: 24),
                      Container(
                        decoration: const BoxDecoration(color: ColorConstants.ColorBlack_10,),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AnswerButton(
                                  label: L10n.of(context).a,
                                  onTap: () {
                                    setState(() {
                                      QuizePage.choosedAnswer = 0;
                                      ChangeQusetions();
                                    });
                                  },
                                  child: checkCorrectAnswer(0),
                                ),
                                AnswerButton(
                                  label: L10n.of(context).b,
                                  onTap: () {
                                    setState(() {
                                      QuizePage.choosedAnswer = 1;
                                      ChangeQusetions();
                                    });
                                  },
                                  child: checkCorrectAnswer(1),
                                ),
                                AnswerButton(
                                  label: L10n.of(context).c,
                                  onTap: () {
                                    setState(() {
                                      QuizePage.choosedAnswer = 2;
                                      ChangeQusetions();
                                    });
                                  },
                                  child: checkCorrectAnswer(2),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AnswerButton(
                                  label: L10n.of(context).d,
                                  onTap: () {
                                    setState(() {
                                      QuizePage.choosedAnswer = 3;
                                      ChangeQusetions();
                                    });
                                  },
                                  child: checkCorrectAnswer(3),
                                ),
                                AnswerButton(
                                  label: L10n.of(context).e,
                                  onTap: () {
                                    setState(() {
                                      QuizePage.choosedAnswer = 4;
                                      ChangeQusetions();
                                    });
                                  },
                                  child: checkCorrectAnswer(4),
                                ),
                                AnswerButton(
                                  label: L10n.of(context).f,
                                  onTap: () {
                                    setState(() {
                                      QuizePage.choosedAnswer = 5;
                                      ChangeQusetions();
                                    });
                                  },
                                  child: checkCorrectAnswer(5),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                              right: 300,
                              child: Visibility(
                                visible: isBeforeButtonVisible,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      questionsNumber--;
                                      QuizePage.showQuestionIndex--;
                                      ButtonVisibleView();
                                    });
                                  },
                                  child: Container(
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.navigate_before,
                                          color: ColorConstants.ColorWhite_FD,
                                          size: 30,
                                        ),
                                        Text(
                                            L10n.of(context).back,
                                          style: const TextStyle(
                                              fontFamily: 'dana',
                                              fontWeight: FontWeight.bold,
                                              color: ColorConstants.ColorWhite_FD,
                                              fontSize: 18
                                          ),
                                          textAlign: TextAlign.end,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Visibility(
                              visible: showQuestionsNumber,
                              child: Container(
                                width: 70,
                                child: Column(
                                    children: [
                                      Text(
                                        '$questionsNumber / 20',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ]
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 300,
                            child: Visibility(
                              visible: isNextButtonVisible,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (questionsNumber < 20) {
                                      questionsNumber++;
                                      QuizePage.showQuestionIndex++;
                                      ButtonVisibleView();
                                    } else {
                                      ChangeQusetions();
                                    }
                                  });
                                },
                                child: Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        questionsNumber == 20 ? L10n.of(context).next : L10n.of(context).next,
                                        style: const TextStyle(
                                            fontFamily: 'dana',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 18
                                        ),
                                        textAlign: TextAlign.end,
                                      ),
                                      const Icon(
                                        Icons.navigate_next,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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