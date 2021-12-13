import 'package:flutter/material.dart';
import 'package:trackhub/app/ui/pages/login.dart';
import 'package:trackhub/app/ui/pages/register.dart';
import 'package:trackhub/app/ui/theme/app_fonts.dart';
import 'package:trackhub/app/utils/responsive_safe_area.dart';
import 'package:trackhub/app/utils/device_utils.dart';
import 'package:trackhub/app/ui/theme/app_colors.dart';
import 'package:trackhub/app/ui/theme/app_strings.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: ResponsiveSafeArea(
        builder: (context, size) {
          return Container(
              height: DeviceUtils.getScaledHeight(context, scale: 1),
              width: DeviceUtils.getScaledWidth(context, scale: 1),
              color: AppColors.whiteColor,
              child: WelcomeViews(context, 'assets/images/logo.png',
                  Strings.welcomeText, Strings.welcomeSubText));
        },
        key: null,
      ),
    );
  }
}

StatelessWidget WelcomeViews(
    context, String assetLink, String title, String subText) {
  return Container(
      color: AppColors.whiteColor,
      padding: EdgeInsets.symmetric(
          horizontal: DeviceUtils.getScaledWidth(context, scale: 0.03)),
      height: DeviceUtils.getScaledHeight(context, scale: 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            assetLink,
            width: DeviceUtils.getScaledWidth(context, scale: 0.6),
            height: DeviceUtils.getScaledHeight(context, scale: 0.3),
            fit: BoxFit.contain,
          ),
          Text(
            subText,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                fontFamily: FontFamily.interRegular),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.07),
          ),


          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Register()));
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: AppColors.secondaryColor),
              margin: EdgeInsets.symmetric(horizontal: 32),
              child: Center(
                child: Text(
                  Strings.signup,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppColors.whiteColor,
                      fontFamily: FontFamily.interRegular),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.04),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login()));
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: AppColors.secondaryColor,
                  ),
                  color: Colors.transparent),
              margin: EdgeInsets.symmetric(horizontal: 32),
              child: Center(
                child: Text(
                  Strings.signIn,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppColors.secondaryColor,
                      fontFamily: FontFamily.interRegular),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ));
}
