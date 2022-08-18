import 'package:flutter/material.dart';
import 'package:ui_practice/widgets/custom_dropdownwidget.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [_justTitle(), _whole()],
          ),
        ),
      ),
    );
  }

  Widget _justTitle() {
    return const Text(
      "NTH to C",
      style: TextStyle(
        color: Colors.white,
        fontSize: 70,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _justbody() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/abc.png"),
        ),
      ),
    );
  }

  Widget _whole() {
    return Container(
      height: _deviceHeight * 0.25,
      width: _deviceHeight * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _dropdownwidget(),
          _alphabetdropdownwidget(),
        ],
      ),
    );
  }

  Widget _dropdownwidget() {
    return CustomDropDown(
        values: ['first', 'second', 'third'], width: _deviceWidth);
  }

  Widget _alphabetdropdownwidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDown(
            values: ['A', 'B', 'C', 'D'], width: _deviceWidth * 0.45),
        CustomDropDown(
            values: ['AA', 'BB', 'CC', 'DD '], width: _deviceWidth * 0.40),
      ],
    );
  }
}
