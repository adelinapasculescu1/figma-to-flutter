import 'package:adelina_s_application1/core/app_export.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:adelina_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:adelina_s_application1/widgets/custom_icon_button.dart';
import 'package:adelina_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpasswordController1 = TextEditingController();

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
                        EdgeInsets.only(left: 40.h, top: 156.v, right: 40.h),
                    child: Column(children: [
                      CustomTextFormField(
                          controller: emailController,
                          hintText: "Email address",
                          textInputType: TextInputType.emailAddress),
                      SizedBox(height: 15.v),
                      CustomTextFormField(
                          controller: newpasswordController,
                          hintText: "New password",
                          textInputType: TextInputType.visiblePassword,
                          obscureText: true),
                      SizedBox(height: 15.v),
                      CustomTextFormField(
                          controller: newpasswordController1,
                          hintText: "Confirm new password",
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          obscureText: true),
                      SizedBox(height: 62.v),
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

  /// Navigates to the logInScreen when the action is triggered.
  onTapBtnCheckmark(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }
}
