import 'package:flutter/material.dart';
import 'package:iq_test/common/localization/generated/l10n.dart';
import 'package:iq_test/common/theme/color_constants.dart';
import 'package:iq_test/common/widgets/border_radius_constants.dart';
import 'package:iq_test/features/quize/page/quize_page.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key,
    required this.toggleTheme,
    this.checkDarkMode = true,
  }) : super(key: key);

  final VoidCallback toggleTheme;
  final bool checkDarkMode;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          L10n.of(context).iqTest,
          style:textTheme.titleSmall,
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Theme.of(context).scaffoldBackgroundColor,
                Theme.of(context).scaffoldBackgroundColor,
              ],
            ),
          ),
          child: SafeArea(
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const QuizePage(),
                                ),
                              );
                            },
                            child: Ink(
                              child: Container(
                                padding: const EdgeInsets.all(16.0),
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topLeft,
                                    colors: [
                                      ColorConstants.ColorBlack_00,
                                      ColorConstants.ColorBlack_10,
                                    ],
                                  ),
                                  borderRadius: BorderRadiusConstants.circular30
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(width: 10),
                                    Image.asset(
                                      'assets/images/start.png',
                                      width: 50,
                                      height: 50,
                                    ),
                                    const SizedBox(width: 15),
                                 Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          L10n.of(context).ready,
                                          style: textTheme.bodySmall,
                                          textAlign: TextAlign.end,
                                        ),
                                        const SizedBox(width: 16),
                                        Text(
                                          L10n.of(context).checkYourself,
                                          style: textTheme.bodySmall,
                                          textAlign: TextAlign.end,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(width: 25,),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: InkWell(
                            onTap: () {},
                            child: Ink(
                              child: Container(
                                padding: const EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Theme.of(context).unselectedWidgetColor,
                                      Theme.of(context).primaryColorLight,
                                    ],
                                  ),
                                  borderRadius: BorderRadiusConstants.circular30,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        widget.toggleTheme();
                                      },
                                      child: Ink(
                                        child: Container(
                                          padding: const EdgeInsets.all(16.0),
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Theme.of(context).unselectedWidgetColor,
                                                Theme.of(context).primaryColorLight,
                                              ],
                                            ),
                                            borderRadius: BorderRadiusConstants.circular30,
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                widget.checkDarkMode ? Icons.dark_mode : Icons.sunny,
                                                color: Theme.of(context).secondaryHeaderColor,
                                                size: 30,
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                widget.checkDarkMode ? L10n.of(context).dart : L10n.of(context).white,
                                                style: Theme.of(context).textTheme.labelLarge,
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
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}