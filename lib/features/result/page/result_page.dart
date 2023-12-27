import 'package:flutter/material.dart';
import 'package:iq_test/common/localization/generated/l10n.dart';
import 'package:iq_test/common/theme/color_constants.dart';
import 'package:iq_test/features/quize/page/quize_page.dart';


class ResultPage extends StatelessWidget {
  final int correctAnswersCount;
  final String resultText;

  ResultPage({
    required this.correctAnswersCount,
    required this.resultText
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: ColorConstants.ColorBlack_10,
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 150),
            Text(
              '$correctAnswersCount',
              style: textTheme.headlineMedium,
            ),
            Text(
              resultText,
                style: textTheme.displaySmall
            ),
            const SizedBox(height: 100),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const QuizePage())
                );
              },
              child: Ink(
                child: Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      colors: [
                        ColorConstants.ColorBlue_5D,
                        ColorConstants.ColorBlack_10,
                      ]
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 5),
                      Text(
                        L10n.of(context).again,
                        style: textTheme.displayLarge,
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Ink(
                child: Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      colors: [
                        ColorConstants.ColorRed_C4,
                        ColorConstants.ColorBlack_10,
                      ]
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 5),
                      Text(
                        L10n.of(context).menu,
                        style: textTheme.displayLarge,
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}