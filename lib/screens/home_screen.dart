import 'package:Covid19/components/top_screen.dart';
import 'package:Covid19/core/consts.dart';
import 'package:Covid19/screens/statistics_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopScreen(
              children: [
                _generateMainText(),
                _generateButtons(),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: RichText(
                text: TextSpan(
                  children: [
                    _textSpan('Symptoms of ', Colors.black, 18),
                    _textSpan('COVID 19', AppColors.mainColor, 18),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.only(left: 20),
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                children: [
                  _generateListSymptoms('assets/images/1.png', 'Fever'),
                  _generateListSymptoms('assets/images/2.png', 'Dry Cough'),
                  _generateListSymptoms('assets/images/3.png', 'Headache'),
                  _generateListSymptoms('assets/images/4.png', 'Breathless'),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: RichText(
                text: TextSpan(
                  children: [
                    _textSpan('Prevention', Colors.black, 22),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 20),
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                children: [
                  _generateListPrevention(
                      'assets/images/a10.png', 'WASH\n', 'hands often'),
                  _generateListPrevention(
                      'assets/images/a4.png', 'COVER\n', 'your cough'),
                  _generateListPrevention(
                      'assets/images/a6.png', 'ALWAYS\n', 'clean'),
                  _generateListPrevention(
                      'assets/images/a9.png', 'USE\n', 'mask'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Container(
                    width: 320,
                    height: 80,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(1, 1),
                          spreadRadius: 0.5,
                          blurRadius: 4,
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset('assets/images/map.png'),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'CASES\n',
                                style: TextStyle(
                                  color: AppColors.mainColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'Overview Worldwide\n',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 12,
                                ),
                              ),
                              TextSpan(
                                text: '21.118.594 confirmed',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 15),
                        IconButton(
                          color: Colors.black54,
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => StatisticsScreen(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _generateListPrevention(String path, String text1, String text2) {
    return Column(
      children: [
        Container(
          width: 170,
          height: 80,
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.white),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(1, 1),
                spreadRadius: 0.5,
                blurRadius: 4,
              )
            ],
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(path),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: text1,
                      style: TextStyle(
                        color: AppColors.mainColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: text2,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _generateListSymptoms(String path, String text) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          margin: EdgeInsets.only(right: 22),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
              colors: [
                AppColors.backgroundColor,
                Colors.white,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            border: Border.all(color: Colors.white),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(1, 1),
                spreadRadius: 1,
                blurRadius: 3,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(path),
          ),
        ),
        SizedBox(height: 7),
        Text(
          text,
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }

  TextSpan _textSpan(String text, Color color, double fontSize) {
    return TextSpan(
      text: text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _generateButtons() {
    return Positioned(
      bottom: 15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(width: 20),
          FlatButton(
            color: Colors.blue,
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Text(
                'DONATE NOW',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
          ),
          SizedBox(width: 25),
          FlatButton(
            color: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Text(
                'EMERGENCY',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _generateMainText() {
    return Positioned(
      top: 65,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'COVID-19',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 26,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Coronavirus Relief Fund',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'to this fund will help to stop the virus\'s spread and give\ncommuniteson the font lines.',
              style: TextStyle(
                color: Colors.white,
                height: 1.5,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
