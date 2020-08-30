import 'package:Covid19/core/consts.dart';
import 'package:Covid19/core/flutter_icons.dart';
import 'package:flutter/material.dart';

class TopScreen extends StatelessWidget {
  final List<Widget> children;

  TopScreen({this.children}) {
    this.children.add(_generateAppBar());
    this.children.add(Image.asset('assets/images/virus2.png'));
  }

  @override
  Widget build(BuildContext context) {
    return _generateTopScreen(context, children);
  }
}

Widget _generateTopScreen(BuildContext context, List<Widget> children) {
  return Container(
    height: 270,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: AppColors.mainColor,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
    ),
    child: Stack(
      children: children,
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
