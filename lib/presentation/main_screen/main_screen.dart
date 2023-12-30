import '../main_screen/widgets/recipecard_item_widget.dart';
import 'package:adelina_s_application1/core/app_export.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:adelina_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:adelina_s_application1/presentation/recipe_screen_bottomsheet/recipe_screen_bottomsheet.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 27.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 29.v),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("Hello, User!",
                              style: theme.textTheme.displaySmall)),
                      SizedBox(height: 17.v),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("Favorite recipes",
                              style: CustomTextStyles.titleLargeBlack900)),
                      SizedBox(height: 16.v),
                      _buildRecipeCard(context)
                    ])),
            bottomNavigationBar: _buildBottomBar(context)));
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

  /// Section Widget
  Widget _buildRecipeCard(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 22.v);
                },
                itemCount: 6,
                itemBuilder: (context, index) {
                  return RecipecardItemWidget(onTapImgRecipeImage: () {
                    onTapImgRecipeImage(context);
                  });
                })));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return SizedBox(
        child: SizedBox(
            height: 95.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.topCenter, children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      height: 63.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(color: appTheme.blueGray100))),
              CustomImageView(
                  imagePath: ImageConstant.imgGroup4,
                  height: 83.adaptSize,
                  width: 83.adaptSize,
                  alignment: Alignment.topCenter)
            ])));
  }

  /// Shows a modal bottom sheet with [RecipeScreenBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapImgRecipeImage(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => RecipeScreenBottomsheet(),
        isScrollControlled: true);
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapLock(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
