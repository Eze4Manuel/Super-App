import 'package:flutter/material.dart';
import 'package:trackhub/app/ui/pages/forgot_password.dart';
import 'package:trackhub/app/ui/pages/register.dart';
import 'package:trackhub/app/ui/theme/app_colors.dart';
import 'package:trackhub/app/ui/theme/app_fonts.dart';
import 'package:trackhub/app/ui/theme/app_strings.dart';
import 'package:trackhub/app/utils/device_utils.dart';
import 'package:trackhub/app/utils/responsive_safe_area.dart';
import 'package:trackhub/app/utils/widget_utils.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool isChecked = false;


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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.26),
                    ),
                    Text(
                      'Sign In',
                      style: TextStyle(
                          color: AppColors.appPrimaryColor,
                          fontFamily: FontFamily.interBold,
                          fontSize: 20
                      ),
                    ),
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.04),
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
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 14,
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
                        setState(() {});
                      },
                    ),

                    // Last Name
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.04),
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
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 14,
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
                        setState(() {});
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            Text(
                              'Remember me',
                              style: TextStyle(
                                  color: AppColors.color10,
                                  fontFamily: FontFamily.interRegular,
                                  fontSize: 13
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => ForgotPassword()));
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: AppColors.color10,
                                fontFamily: FontFamily.interRegular,
                                fontSize: 13
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                    ),
                    GestureDetector(
                      onTap: () {
                         Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: AppColors.secondaryColor),
                        child: Center(
                          child: Text(
                            'Sign In',
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
                      height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Register()));
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Don't have have an account? Register",
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
              ));
        },
        key: null,
      ),
    );
  }
}
