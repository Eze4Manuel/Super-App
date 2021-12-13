import 'package:flutter/material.dart';
import 'package:trackhub/app/ui/pages/create_new_password.dart';
import 'package:trackhub/app/ui/pages/email_congrats.dart';
import 'package:trackhub/app/ui/pages/login.dart';
import 'package:trackhub/app/ui/theme/app_colors.dart';
import 'package:trackhub/app/ui/theme/app_fonts.dart';
import 'package:trackhub/app/utils/device_utils.dart';
import 'package:trackhub/app/utils/responsive_safe_area.dart';


class ForgotPassword2 extends StatelessWidget {
  const ForgotPassword2({Key? key}) : super(key: key);

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
              child: Container(
                  color: AppColors.whiteColor,
                  padding: EdgeInsets.symmetric(
                      horizontal:
                      DeviceUtils.getScaledWidth(context, scale: 0.07)),
                  height: DeviceUtils.getScaledHeight(context, scale: 1),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: DeviceUtils.getScaledHeight(context,
                              scale: 0.17),
                        ),
                        Image.asset(
                          'assets/images/email_verify.png',
                          width:
                          DeviceUtils.getScaledWidth(context, scale: 0.28),
                          height: DeviceUtils.getScaledHeight(context,
                              scale: 0.28),
                          fit: BoxFit.contain,
                        ),
                        SizedBox(
                          height: DeviceUtils.getScaledHeight(context,
                              scale: 0.0),
                        ),
                        Text(
                          'Please check your email',
                          style: TextStyle(
                              fontFamily: FontFamily.interBold,
                              fontWeight: FontWeight.w400,
                              color: AppColors.appPrimaryColor,
                              fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: DeviceUtils.getScaledHeight(context,
                              scale: 0.02),
                        ),
                        Text(
                          'We have sent a password recovery information to your mail',
                          style: TextStyle(
                              fontFamily: FontFamily.interRegular,
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: DeviceUtils.getScaledHeight(context,
                              scale: 0.04),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => CreateNewPassword()));
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: AppColors.secondaryColor),
                            child: Center(
                              child: Text(
                                'Open email app',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: AppColors.whiteColor,
                                    fontFamily: FontFamily.interBold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: DeviceUtils.getScaledHeight(context,
                              scale: 0.05),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Login()));
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Go back to Login',
                              style: TextStyle(
                                  color: AppColors.color12,
                                  fontFamily: FontFamily.interRegular,
                                  fontSize: 13
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )));
        },
        key: null,
      ),
    );
  }
}
