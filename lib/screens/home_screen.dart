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
          children: [
            Container(
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
            ),
          ],
        ),
      ),
    );
  }

  Positioned _generateButtons() {
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

  Positioned _generateMainText() {
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
