import 'package:adelina_s_application1/core/app_export.dart';
import 'package:adelina_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 164.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 1.h),
                          child: Column(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgGroup1,
                                height: 127.v,
                                width: 128.h),
                            SizedBox(height: 13.v),
                            Text("Cooking App",
                                style: theme.textTheme.headlineSmall)
                          ])),
                      Spacer(),
                      CustomElevatedButton(
                          width: 162.h,
                          text: "Log In",
                          onPressed: () {
                            onTapLogIn(context);
                          }),
                      SizedBox(height: 15.v),
                      CustomElevatedButton(
                          width: 162.h,
                          text: "Sign Up",
                          onPressed: () {
                            onTapSignUp(context);
                          }),
                      SizedBox(height: 33.v)
                    ]))));
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
