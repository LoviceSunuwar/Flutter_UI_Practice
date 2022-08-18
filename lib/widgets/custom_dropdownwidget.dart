import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  List<String> values;
  double width;

  CustomDropDown({required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(10)),
      child: DropdownButton(
        underline: Container(),
        dropdownColor: Color.fromRGBO(53, 53, 53, 1.0),
        style: TextStyle(color: Colors.white),
        value: values.first,
        onChanged: (_) {},
        items: values.map(
          (e) {
            return DropdownMenuItem(
              child: Text(e),
              value: e,
            );
          },
        ).toList(),
      ),
    );
  }
}
