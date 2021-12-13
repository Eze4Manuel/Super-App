import 'package:flutter/material.dart';
import 'package:trackhub/app/ui/pages/email_verify.dart';
import 'package:trackhub/app/ui/pages/login.dart';
import 'package:trackhub/app/ui/theme/app_colors.dart';
import 'package:trackhub/app/ui/theme/app_fonts.dart';
import 'package:trackhub/app/ui/theme/app_strings.dart';
import 'package:trackhub/app/utils/device_utils.dart';
import 'package:trackhub/app/utils/responsive_safe_area.dart';
import 'package:trackhub/app/utils/widget_utils.dart';


class RegisterStep2 extends StatefulWidget {
  const RegisterStep2({Key? key}) : super(key: key);

  @override
  _RegisterStep2State createState() => _RegisterStep2State();
}

class _RegisterStep2State extends State<RegisterStep2> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: ResponsiveSafeArea(
        builder: (context, size) {
          return Container(
              height: DeviceUtils.getScaledHeight(context, scale: 1),
              width: DeviceUtils.getScaledWidth(context, scale: 1),
              padding: EdgeInsets.symmetric(
                horizontal: DeviceUtils.getScaledWidth(context, scale: 0.04)),
              color: AppColors.whiteColor,
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
                      'Step 2 of 2',
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
                      'City',
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
                      'Postal Code',
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
                      'Country',
                      style: TextStyle(
                          color: AppColors.color10,
                          fontFamily: FontFamily.interRegular,
                          fontSize: 13
                      ),
                    ),
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.01),
                    ),
                    DropdownButtonFormField<String>(
                      value: dropdownValue,
                      decoration: InputDecorationValues(
                        hintText: "Enter Value",
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>['One', 'Two', 'Free', 'Four']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),


                    // Mobile Number
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                    ),
                    Text(
                      'Email Address',
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
                      'Password',
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
                            MaterialPageRoute(builder: (context) => EmailVerify()));
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: AppColors.secondaryColor),
                        child: Center(
                          child: Text(
                            Strings.signup,
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
