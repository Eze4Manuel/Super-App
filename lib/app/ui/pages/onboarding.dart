import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trackhub/app/ui/pages/welcome.dart';
import 'package:trackhub/app/ui/theme/app_fonts.dart';
import 'package:trackhub/app/utils/responsive_safe_area.dart';
import 'package:trackhub/app/utils/device_utils.dart';
import 'package:trackhub/app/ui/theme/app_colors.dart';
import 'package:trackhub/app/ui/theme/app_strings.dart';
import 'package:trackhub/app/utils/widget_utils.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: ResponsiveSafeArea(
        builder: (context, size) {
          return ContentPage();
        },
        key: null,
      ),
    );
  }
}

class ContentPage extends StatefulWidget {
  ContentPageStage createState() => ContentPageStage();
}

class ContentPageStage extends State<ContentPage> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 3),
      height: 8.0,
      width: 8.0,
      decoration: BoxDecoration(
          color: isActive ? AppColors.secondaryColor : Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.secondaryColor, width: 1)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: AppColors.whiteColor,
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal:
                        DeviceUtils.getScaledWidth(context, scale: 0.03),
                vertical: DeviceUtils.getScaledHeight(context, scale: 0.02)),
                color: AppColors.whiteColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (_currentPage != 0) {
                          _pageController.animateToPage(
                            _currentPage - 1,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: AppColors.color10,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Welcome()), (Route<dynamic> route) => false);
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(fontFamily: FontFamily.interRegular),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.60,
                color: AppColors.whiteColor,
                child: PageView(
                  physics: ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    Container(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.39),
                      width: DeviceUtils.getScaledWidth(context, scale: 1),
                      color: AppColors.whiteColor,
                      child: SplashViews(context, 'assets/images/img1.png',
                          Strings.onBoardingTitle1, Strings.onBoardingText1),
                    ),
                    Container(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.59),
                      width: DeviceUtils.getScaledWidth(context, scale: 1),
                      color: AppColors.whiteColor,
                      child: SplashViews(context, 'assets/images/img2.png',
                          Strings.onBoardingTitle2, Strings.onBoardingText2),
                    ),
                    Container(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.59),
                      width: DeviceUtils.getScaledWidth(context, scale: 1),
                      color: AppColors.whiteColor,
                      child: SplashViews(context, 'assets/images/img3.png',
                          Strings.onBoardingTitle3, Strings.onBoardingText3),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (_currentPage == 2) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Welcome()), (Route<dynamic> route) => false);
                  } else {
                    if (_pageController.hasClients) {
                      _pageController.animateToPage(
                        _currentPage + 1,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    }
                  }
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: AppColors.secondaryColor),
                  margin: EdgeInsets.symmetric(horizontal: 32),
                  child: Center(
                    child: Text(
                      'NEXT',
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
                height: DeviceUtils.getScaledHeight(context, scale: 0.07),
              ),
              Container(
                color: AppColors.whiteColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: _buildPageIndicator(),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

StatelessWidget SplashViews(
    context, String assetLink, String title, String subText) {
  return Container(
      color: AppColors.whiteColor,
      padding: EdgeInsets.symmetric(
          horizontal: DeviceUtils.getScaledWidth(context, scale: 0.05)),
      height: 60,
      width: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            assetLink,
            width: DeviceUtils.getScaledWidth(context, scale: 0.5),
            height: DeviceUtils.getScaledHeight(context, scale: 0.3),
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.01),
          ),
          Center(
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: AppColors.appPrimaryColor,
                  fontFamily: FontFamily.interExtraBold),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.02),
          ),
          Text(
            subText,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                fontFamily: FontFamily.interRegular),
            textAlign: TextAlign.center,
          )
        ],
      ));
}
