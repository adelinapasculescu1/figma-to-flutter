import 'package:adelina_s_application1/core/app_export.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:adelina_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:adelina_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ScanProductsScreen extends StatelessWidget {
  const ScanProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 51.v),
                child: Column(children: [
                  SizedBox(height: 8.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle8,
                      height: 388.v,
                      width: 318.h,
                      radius: BorderRadius.circular(25.h)),
                  SizedBox(height: 38.v),
                  CustomIconButton(
                      height: 83.adaptSize,
                      width: 83.adaptSize,
                      padding: EdgeInsets.all(16.h),
                      decoration: IconButtonStyleHelper.fillGray,
                      onTap: () {
                        onTapBtnCamera(context);
                      },
                      child:
                          CustomImageView(imagePath: ImageConstant.imgCamera)),
                  SizedBox(height: 91.v),
                  Text("Make sure your ingredients are visible.",
                      style: CustomTextStyles.titleMedium18)
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

  /// Navigates to the profileScreen when the action is triggered.
  onTapLock(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the filterRecipesScreen when the action is triggered.
  onTapBtnCamera(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.filterRecipesScreen);
  }
}
