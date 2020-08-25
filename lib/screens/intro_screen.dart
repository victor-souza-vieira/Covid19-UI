import 'package:Covid19/core/consts.dart';
import 'package:Covid19/screens/home_screen.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.mainColor,
              AppColors.mainColor.withOpacity(.5),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
              Positioned(
                bottom: 150,
                left: 35,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Coronavirus disease (COVID-19)\n',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      TextSpan(
                        text:
                            'is an infectianus disease caused by a new virus.',
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 120,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  height: 320,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 150,
                          bottom: 100,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Image.asset('assets/images/person.png'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 90,
                          right: 20,
                          left: 30,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Image.asset("assets/images/virus.png"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 50,
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => HomeScreen(),
                    ),
                  ),
                  child: Container(
                    height: 70,
                    width: 290,
                    margin: EdgeInsets.only(left: 40),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(1, 1),
                          spreadRadius: 1,
                          blurRadius: 3,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: AppColors.mainColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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
