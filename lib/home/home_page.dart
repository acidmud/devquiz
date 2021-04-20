import 'package:DevQuiz/home/widgets/appbar/app_bar_widget.dart';
import 'package:DevQuiz/home/widgets/level_button/level_button_widget.dart';
import 'package:DevQuiz/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              Container(
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    LevelButtonWidget(
                      title: "Fácil",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    LevelButtonWidget(
                      title: "Médio",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    LevelButtonWidget(
                      title: "Difícil",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    LevelButtonWidget(
                      title: "Perito",
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Expanded(
                child: GridView.count(
                  mainAxisSpacing: 14,
                  crossAxisSpacing: 14,
                  crossAxisCount: 2,
                  children: [
                    QuizCardWidget(),
                    QuizCardWidget(),
                    QuizCardWidget(),
                    QuizCardWidget(),
                    QuizCardWidget(),
                    QuizCardWidget(),
                    QuizCardWidget(),
                    QuizCardWidget()
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
