import 'package:adelina_s_application1/core/app_export.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:adelina_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:adelina_s_application1/widgets/custom_icon_button.dart';
import 'package:adelina_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

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
                    padding: EdgeInsets.symmetric(horizontal: 39.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildFirstName(context),
                          SizedBox(height: 15.v),
                          _buildLastName(context),
                          SizedBox(height: 15.v),
                          _buildEmail(context),
                          SizedBox(height: 15.v),
                          _buildPassword(context),
                          SizedBox(height: 15.v),
                          _buildConfirmPassword(context),
                          SizedBox(height: 60.v),
                          CustomIconButton(
                              height: 57.adaptSize,
                              width: 57.adaptSize,
                              padding: EdgeInsets.all(10.h),
                              onTap: () {
                                onTapBtnCheckmark(context);
                              },
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgCheckmark)),
                          SizedBox(height: 5.v)
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
              imagePath: ImageConstant.imgSettings,
              margin: EdgeInsets.fromLTRB(33.h, 9.v, 33.h, 19.v))
        ]);
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return CustomTextFormField(
        controller: firstNameController, hintText: "First Name");
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return CustomTextFormField(
        controller: lastNameController, hintText: "Last Name");
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Email address",
        textInputType: TextInputType.emailAddress);
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        textInputType: TextInputType.visiblePassword,
        obscureText: true);
  }

  /// Section Widget
  Widget _buildConfirmPassword(BuildContext context) {
    return CustomTextFormField(
        controller: confirmPasswordController,
        hintText: "Confirm Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true);
  }

  /// Navigates to the mainScreen when the action is triggered.
  onTapBtnCheckmark(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreen);
  }
}
