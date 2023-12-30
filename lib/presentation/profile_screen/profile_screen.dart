import 'package:adelina_s_application1/core/app_export.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:adelina_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:adelina_s_application1/widgets/custom_elevated_button.dart';
import 'package:adelina_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

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
                    padding: EdgeInsets.all(29.h),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Hello, User!",
                              style: theme.textTheme.displaySmall)),
                      SizedBox(height: 20.v),
                      _buildUserInfo(context),
                      SizedBox(height: 11.v),
                      _buildUserLastName(context),
                      SizedBox(height: 11.v),
                      _buildUserEmailAddress(context),
                      SizedBox(height: 11.v),
                      _buildUserPassword(context),
                      Spacer(),
                      SizedBox(height: 99.v),
                      _buildUserActions(context)
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
              margin: EdgeInsets.fromLTRB(29.h, 12.v, 13.h, 3.v)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgLock,
              margin: EdgeInsets.only(left: 42.h, top: 8.v, right: 42.h))
        ]);
  }

  /// Section Widget
  Widget _buildUserInfo(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("First name", style: theme.textTheme.titleMedium),
      SizedBox(height: 10.v),
      CustomTextFormField(controller: firstNameController, hintText: "User")
    ]);
  }

  /// Section Widget
  Widget _buildUserLastName(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Last Name", style: theme.textTheme.titleMedium),
      SizedBox(height: 10.v),
      CustomTextFormField(controller: lastNameController, hintText: "User")
    ]);
  }

  /// Section Widget
  Widget _buildUserEmailAddress(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Email address", style: theme.textTheme.titleMedium),
      SizedBox(height: 10.v),
      CustomTextFormField(
          controller: emailController,
          hintText: "user@gmail.com",
          textInputType: TextInputType.emailAddress)
    ]);
  }

  /// Section Widget
  Widget _buildUserPassword(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Password", style: theme.textTheme.titleMedium),
      SizedBox(height: 10.v),
      CustomTextFormField(
          controller: passwordController,
          hintText: "*******************",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          obscureText: true)
    ]);
  }

  /// Section Widget
  Widget _buildUserActions(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: CustomElevatedButton(
              text: "Edit",
              margin: EdgeInsets.only(right: 4.h),
              onPressed: () {
                onTapEdit(context);
              })),
      Expanded(
          child: CustomElevatedButton(
              text: "Log Out",
              margin: EdgeInsets.only(left: 4.h),
              onPressed: () {
                onTapLogOut(context);
              }))
    ]);
  }

  /// Navigates to the editProfileScreen when the action is triggered.
  onTapEdit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.editProfileScreen);
  }

  /// Navigates to the startingScreen when the action is triggered.
  onTapLogOut(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.startingScreen);
  }
}
