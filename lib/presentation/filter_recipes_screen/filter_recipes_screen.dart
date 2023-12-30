import 'package:adelina_s_application1/core/app_export.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:adelina_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:adelina_s_application1/widgets/custom_icon_button.dart';
import 'package:adelina_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FilterRecipesScreen extends StatelessWidget {
  FilterRecipesScreen({Key? key}) : super(key: key);

  TextEditingController whatDoYouWantController = TextEditingController();

  TextEditingController breakfastController = TextEditingController();

  TextEditingController lunchController = TextEditingController();

  TextEditingController dinnerController = TextEditingController();

  TextEditingController desertController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 25.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 318.h,
                          margin: EdgeInsets.only(right: 15.h),
                          child: Text("What do you want\nto eat?",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.displaySmall))),
                  SizedBox(height: 10.v),
                  _buildWhatDoYouWant(context),
                  SizedBox(height: 11.v),
                  _buildBreakfast(context),
                  SizedBox(height: 11.v),
                  _buildLunch(context),
                  SizedBox(height: 11.v),
                  _buildDinner(context),
                  SizedBox(height: 11.v),
                  _buildDesert(context),
                  SizedBox(height: 55.v),
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
                ]))));
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
  Widget _buildWhatDoYouWant(BuildContext context) {
    return CustomTextFormField(
        controller: whatDoYouWantController, hintText: "Breakfast");
  }

  /// Section Widget
  Widget _buildBreakfast(BuildContext context) {
    return CustomTextFormField(
        controller: breakfastController, hintText: "Lunch");
  }

  /// Section Widget
  Widget _buildLunch(BuildContext context) {
    return CustomTextFormField(controller: lunchController, hintText: "Dinner");
  }

  /// Section Widget
  Widget _buildDinner(BuildContext context) {
    return CustomTextFormField(
        controller: dinnerController, hintText: "Desert");
  }

  /// Section Widget
  Widget _buildDesert(BuildContext context) {
    return CustomTextFormField(
        controller: desertController,
        hintText: "Snack",
        textInputAction: TextInputAction.done);
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapLock(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the getRecipesScreenTwoScreen when the action is triggered.
  onTapBtnCheckmark(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.getRecipesScreenTwoScreen);
  }
}
