import 'package:flutter/material.dart';

void main() {
  runApp(basketball_points_counter());
}

class basketball_points_counter extends StatefulWidget {
  @override
  State<basketball_points_counter> createState() =>
      _basketball_points_counterState();
}

class _basketball_points_counterState extends State<basketball_points_counter> {
  int ScoreA = 0;

  int ScoreB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffe1ae3f),
            title: Text('Basketball Points Counter'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 350,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Team A',
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          '$ScoreA',
                          style: TextStyle(fontSize: 120),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              ScoreA++;
                            });
                          },
                          child: Text(
                            '+1 point',
                            style: TextStyle(fontSize: 17.5),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffe1ae3f),
                            foregroundColor: Colors.white,
                            minimumSize: Size(130, 45),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              ScoreA += 2;
                            });
                          },
                          child: Text(
                            '+2 point',
                            style: TextStyle(fontSize: 17.5),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffe1ae3f),
                            foregroundColor: Colors.white,
                            minimumSize: Size(130, 45),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              ScoreA += 3;
                            });
                          },
                          child: Text(
                            '+3 point',
                            style: TextStyle(fontSize: 17.5),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffe1ae3f),
                            foregroundColor: Colors.white,
                            minimumSize: Size(130, 45),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 350,
                    child: VerticalDivider(
                      thickness: 2,
                      indent: 8,
                      endIndent: 8,
                    ),
                  ),
                  Container(
                    height: 350,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Team B',
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          '$ScoreB',
                          style: TextStyle(fontSize: 120),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              ScoreB++;
                            });
                          },
                          child: Text(
                            '+1 point',
                            style: TextStyle(fontSize: 17.5),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffe1ae3f),
                            foregroundColor: Colors.white,
                            minimumSize: Size(130, 45),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              ScoreB += 2;
                            });
                          },
                          child: Text(
                            '+2 point',
                            style: TextStyle(fontSize: 17.5),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffe1ae3f),
                            foregroundColor: Colors.white,
                            minimumSize: Size(130, 45),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              ScoreB += 3;
                            });
                          },
                          child: Text(
                            '+3 point',
                            style: TextStyle(fontSize: 17.5),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffe1ae3f),
                            foregroundColor: Colors.white,
                            minimumSize: Size(130, 45),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    ScoreA = 0;
                    ScoreB = 0;
                  });
                },
                child: Text(
                  'RESET',
                  style: TextStyle(fontSize: 17.5),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffaba9a6),
                  foregroundColor: Colors.black,
                  minimumSize: Size(130, 45),
                ),
              ),
            ],
          )),
    );
  }
}
