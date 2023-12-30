import 'package:adelina_s_application1/core/app_export.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:adelina_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:adelina_s_application1/widgets/custom_elevated_button.dart';
import 'package:adelina_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

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
                      _buildEditProfile(context),
                      SizedBox(height: 11.v),
                      _buildEditProfileLastName(context),
                      SizedBox(height: 11.v),
                      _buildEditProfileEmailAddress(context),
                      SizedBox(height: 11.v),
                      _buildEditProfilePassword(context),
                      SizedBox(height: 12.v),
                      _buildEditProfileConfirmNewPassword(context),
                      SizedBox(height: 35.v),
                      CustomElevatedButton(
                          width: 162.h,
                          text: "Save",
                          onPressed: () {
                            onTapSave(context);
                          }),
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
              margin: EdgeInsets.fromLTRB(29.h, 12.v, 13.h, 3.v)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgLock,
              margin: EdgeInsets.only(left: 42.h, top: 8.v, right: 42.h),
              onTap: () {
                onTapLock(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildEditProfile(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("First name", style: theme.textTheme.titleMedium),
      SizedBox(height: 10.v),
      CustomTextFormField(controller: firstNameController, hintText: "New User")
    ]);
  }

  /// Section Widget
  Widget _buildEditProfileLastName(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Last Name", style: theme.textTheme.titleMedium),
      SizedBox(height: 10.v),
      CustomTextFormField(controller: lastNameController, hintText: "New User")
    ]);
  }

  /// Section Widget
  Widget _buildEditProfileEmailAddress(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Email address", style: theme.textTheme.titleMedium),
      SizedBox(height: 10.v),
      CustomTextFormField(
          controller: emailController, hintText: "New user@gmail.com")
    ]);
  }

  /// Section Widget
  Widget _buildEditProfilePassword(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Password", style: theme.textTheme.titleMedium),
      SizedBox(height: 10.v),
      CustomTextFormField(
          controller: passwordController,
          hintText: "new *******************",
          textInputType: TextInputType.visiblePassword,
          obscureText: true)
    ]);
  }

  /// Section Widget
  Widget _buildEditProfileConfirmNewPassword(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Confirm new password", style: theme.textTheme.titleMedium),
      SizedBox(height: 9.v),
      CustomTextFormField(
          controller: newpasswordController,
          hintText: "new *******************",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          obscureText: true)
    ]);
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapLock(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
