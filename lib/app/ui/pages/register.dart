import 'package:flutter/material.dart';
import 'package:trackhub/app/ui/pages/login.dart';
import 'package:trackhub/app/ui/pages/register_step_2.dart';
import 'package:trackhub/app/ui/theme/app_colors.dart';
import 'package:trackhub/app/ui/theme/app_fonts.dart';
import 'package:trackhub/app/ui/theme/app_strings.dart';
import 'package:trackhub/app/utils/device_utils.dart';
import 'package:trackhub/app/utils/responsive_safe_area.dart';
import 'package:trackhub/app/utils/widget_utils.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {



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
              padding: EdgeInsets.symmetric(
                  horizontal: DeviceUtils.getScaledWidth(context, scale: 0.04)
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.09),
                    ),
                    Text(
                      Strings.signup,
                      style: TextStyle(
                        color: AppColors.appPrimaryColor,
                        fontFamily: FontFamily.interBold,
                        fontSize: 20
                      ),
                    ),
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                    ),
                    Text(
                      'Step 1 of 2',
                      style: TextStyle(
                          color: AppColors.color10,
                          fontFamily: FontFamily.interMedium,
                          fontSize: 14
                      ),
                    ),
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.05),
                    ),
                    Text(
                      'First Name',
                      style: TextStyle(
                          color: AppColors.color10,
                          fontFamily: FontFamily.interRegular,
                          fontSize: 13
                      ),
                    ),
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.01),
                    ),
                    TextFormField(
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14,
                          fontFamily: FontFamily.interMedium),
                      decoration: InputDecorationValues(
                          hintText: "Enter Value",
                          ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter First Name';
                        }
                      },
                      onChanged: (val) {
                        setState(() {
                        });
                      },
                    ),

                    // Last Name
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                    ),
                    Text(
                      'Last Name',
                      style: TextStyle(
                          color: AppColors.color10,
                          fontFamily: FontFamily.interRegular,
                          fontSize: 13
                      ),
                    ),
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.01),
                    ),
                    TextFormField(
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14,
                          fontFamily: FontFamily.interMedium),
                      decoration: InputDecorationValues(
                        hintText: "Enter Value",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter First Name';
                        }
                      },
                      onChanged: (val) {
                        setState(() {
                        });
                      },
                    ),

                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                    ),
                    Text(
                      'Company',
                      style: TextStyle(
                          color: AppColors.color10,
                          fontFamily: FontFamily.interRegular,
                          fontSize: 13
                      ),
                    ),
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.01),
                    ),
                    TextFormField(
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14,
                          fontFamily: FontFamily.interMedium),
                      decoration: InputDecorationValues(
                        hintText: "Enter Value",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter First Name';
                        }
                      },
                      onChanged: (val) {
                        setState(() {
                        });
                      },
                    ),

                    // Mobile Number
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                    ),
                    Text(
                      'Enter Mobile Number',
                      style: TextStyle(
                          color: AppColors.color10,
                          fontFamily: FontFamily.interRegular,
                          fontSize: 13
                      ),
                    ),
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.01),
                    ),
                    TextFormField(
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14,
                          fontFamily: FontFamily.interMedium),
                      decoration: InputDecorationValues(
                        hintText: "Enter Value",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter First Name';
                        }
                      },
                      onChanged: (val) {
                        setState(() {
                        });
                      },
                    ),

                    // Address
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                    ),
                    Text(
                      'Address',
                      style: TextStyle(
                          color: AppColors.color10,
                          fontFamily: FontFamily.interRegular,
                          fontSize: 13
                      ),
                    ),
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.01),
                    ),
                    TextFormField(
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14,
                          fontFamily: FontFamily.interMedium),
                      decoration: InputDecorationValues(
                        hintText: "Enter Value",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter First Name';
                        }
                      },
                      onChanged: (val) {
                        setState(() {
                        });
                      },
                    ),
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.05),
                    ),
                    GestureDetector(
                      onTap: () {
                         Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => RegisterStep2()));
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: AppColors.secondaryColor),
                        child: Center(
                          child: Text(
                            'Next',
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
                      height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Already have an account? Sign in',
                          style: TextStyle(
                              color: AppColors.color12,
                              fontFamily: FontFamily.interRegular,
                              fontSize: 13
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.05),
                    ),
                  ],
                ),

              ));
        },
        key: null,
      ),
    );
  }
}
