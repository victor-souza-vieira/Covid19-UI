import 'package:Covid19/core/consts.dart';
import 'package:Covid19/core/flutter_icons.dart';
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
            _generateTopScreen(context),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: RichText(
                text: TextSpan(
                  children: [
                    _textSpan('Symptomns of ', Colors.black),
                    _textSpan('COVID 19', AppColors.mainColor),
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
                  _generateListItem('assets/images/1.png', 'Fever'),
                  _generateListItem('assets/images/2.png', 'Dry Cough'),
                  _generateListItem('assets/images/3.png', 'Headache'),
                  _generateListItem('assets/images/4.png', 'Breathless'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _generateListItem(String path, String text) {
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

  TextSpan _textSpan(String text, Color color) {
    return TextSpan(
      text: text,
      style: TextStyle(
        color: color,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _generateTopScreen(BuildContext context) {
    return Container(
      height: 290,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: AppColors.mainColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Stack(
        children: [
          _generateAppBar(),
          _generateMainText(),
          _generateButtons(),
          Image.asset('assets/images/virus2.png'),
        ],
      ),
    );
  }

  Widget _generateButtons() {
    return Positioned(
      bottom: 30,
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
      top: 75,
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

  Widget _generateAppBar() {
    return Container(
      height: 70,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _generateMenuButton(),
          _generateProfileIcon(),
        ],
      ),
    );
  }

  Widget _generateMenuButton() {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        FlutterIcons.menu,
        color: Colors.white,
      ),
    );
  }

  Widget _generateProfileIcon() {
    return Container(
      height: 50,
      width: 50,
      margin: EdgeInsets.only(top: 15, right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(100),
        ),
        border: Border.all(color: Colors.white),
        image: DecorationImage(
          image: AssetImage('assets/images/profile.jpg'),
        ),
      ),
    );
  }
}
