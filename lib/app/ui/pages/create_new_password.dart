import 'package:flutter/material.dart';
import 'package:trackhub/app/ui/pages/forgot_password2.dart';
import 'package:trackhub/app/ui/pages/login.dart';
import 'package:trackhub/app/ui/theme/app_colors.dart';
import 'package:trackhub/app/ui/theme/app_fonts.dart';
import 'package:trackhub/app/utils/device_utils.dart';
import 'package:trackhub/app/utils/responsive_safe_area.dart';
import 'package:trackhub/app/utils/widget_utils.dart';


class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
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
                              scale: 0.13),
                        ),
                        Image.asset(
                          'assets/images/create_new.png',
                          width:
                          DeviceUtils.getScaledWidth(context, scale: 0.28),
                          height: DeviceUtils.getScaledHeight(context,
                              scale: 0.22),
                          fit: BoxFit.contain,
                        ),
                        SizedBox(
                          height: DeviceUtils.getScaledHeight(context,
                              scale: 0.0),
                        ),
                        Text(
                          'Create New password',
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
                          'Your new password must be different\n from the previously used one',
                          style: TextStyle(
                              fontFamily: FontFamily.interRegular,
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                        ),
                        TextFormField(
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 14,
                              fontFamily: FontFamily.interMedium),
                          decoration: InputDecorationValues(
                            hintText: "Enter email address",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter First Name';
                            }
                          },
                          onChanged: (val) {
                            setState(() {});
                          },
                        ),
                        SizedBox(
                          height: DeviceUtils.getScaledHeight(context,
                              scale: 0.02),
                        ),
                        TextFormField(
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 14,
                              fontFamily: FontFamily.interMedium),
                          decoration: InputDecorationValues(
                            hintText: "Repeat new password",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter First Name';
                            }
                          },
                          onChanged: (val) {
                            setState(() {});
                          },
                        ),
                        SizedBox(
                          height: DeviceUtils.getScaledHeight(context,
                              scale: 0.04),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const ForgotPassword2()));
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: AppColors.secondaryColor),
                            child: Center(
                              child: Text(
                                'Create new password',
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
