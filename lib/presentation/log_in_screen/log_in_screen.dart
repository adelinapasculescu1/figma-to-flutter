import 'package:adelina_s_application1/core/app_export.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:adelina_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:adelina_s_application1/widgets/custom_icon_button.dart';
import 'package:adelina_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.h, vertical: 80.v),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 76.v),
                          CustomTextFormField(
                              controller: emailController,
                              hintText: "Email address",
                              textInputType: TextInputType.emailAddress),
                          SizedBox(height: 15.v),
                          CustomTextFormField(
                              controller: passwordController,
                              hintText: "Password",
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              obscureText: true),
                          SizedBox(height: 52.v),
                          CustomIconButton(
                              height: 57.adaptSize,
                              width: 57.adaptSize,
                              padding: EdgeInsets.all(10.h),
                              onTap: () {
                                onTapBtnCheckmark(context);
                              },
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgCheckmark)),
                          Spacer(),
                          GestureDetector(
                              onTap: () {
                                onTapForgotYourPassword(context);
                              },
                              child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 78.h),
                                  child: Column(children: [
                                    Text("Forgot password",
                                        style: CustomTextStyles.titleMedium18),
                                    Divider()
                                  ])))
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 81.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgUser,
            margin: EdgeInsets.only(left: 33.h, top: 1.v, bottom: 6.v)),
        title: AppbarTitle(
            text: "Cooking\nApp", margin: EdgeInsets.only(left: 10.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgLock,
              margin: EdgeInsets.fromLTRB(29.h, 8.v, 29.h, 13.v),
              onTap: () {
                onTapLock(context);
              })
        ]);
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapLock(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the mainScreen when the action is triggered.
  onTapBtnCheckmark(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreen);
  }

  /// Navigates to the resetPasswordScreen when the action is triggered.
  onTapForgotYourPassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.resetPasswordScreen);
  }
}
