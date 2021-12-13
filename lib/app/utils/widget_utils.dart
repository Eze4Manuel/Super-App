import 'package:trackhub/app/ui/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trackhub/app/ui/theme/app_fonts.dart';
import 'package:trackhub/app/ui/theme/app_strings.dart';

InputDecoration InputDecorationValues ({String hintText = ""}) {
  return InputDecoration(
contentPadding: EdgeInsets.fromLTRB(
20.0, 15.0, 20.0, 15.0),
hintText: hintText,
border: OutlineInputBorder(
borderSide: BorderSide(width: 32.0),
borderRadius:
BorderRadius.circular(6.0)),
focusedBorder: OutlineInputBorder(
borderSide: BorderSide(
color: Colors.white, width: 32.0),
borderRadius:
BorderRadius.circular(6.0)));
}


StatelessWidget CustomButton (context, text, screen) {
  return  GestureDetector(
onTap: () {
Navigator.pushAndRemoveUntil(context,
    MaterialPageRoute(builder: (context) => screen), (Route<dynamic> route) => false);
},
child: Container(
height: 50,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(4),
color: AppColors.secondaryColor),
margin: EdgeInsets.symmetric(horizontal: 32),
child: Center(
child: Text(
text,
style: TextStyle(
fontWeight: FontWeight.w400,
fontSize: 16,
color: AppColors.whiteColor,
fontFamily: FontFamily.interRegular),
textAlign: TextAlign.center,
),
),
),
);
}