import '../get_recipes_screen/widgets/recipelist_item_widget.dart';
import 'package:adelina_s_application1/core/app_export.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:adelina_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:adelina_s_application1/presentation/recipe_screen_bottomsheet/recipe_screen_bottomsheet.dart';

class GetRecipesScreen extends StatelessWidget {
  const GetRecipesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                height: 729.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 28.h),
                child: Stack(alignment: Alignment.topCenter, children: [
                  _buildRandomBar(context),
                  _buildFilterOptions(context),
                  _buildRecipeList(context)
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
  Widget _buildRandomBar(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(top: 17.v, right: 1.h, bottom: 661.v),
            padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 13.v),
            decoration: AppDecoration.fillBlueGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder25),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text("Filter by", style: theme.textTheme.titleLarge)),
              CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(left: 187.h, top: 3.v))
            ])));
  }

  /// Section Widget
  Widget _buildFilterOptions(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(top: 43.v, right: 1.h),
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 17.v),
            decoration: AppDecoration.fillGray200,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 29.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtFavoritesFirst(context);
                      },
                      child: Text("Favorites first",
                          style: CustomTextStyles.titleLargeGray600)),
                  SizedBox(height: 16.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtMostIngredients(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("Most ingredients owned",
                              style: CustomTextStyles.titleLargeGray600))),
                  SizedBox(height: 15.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtLeastIngredients(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("Least ingredients owned",
                              style: CustomTextStyles.titleLargeGray600))),
                  SizedBox(height: 15.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtVeganOptionsFirst(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("Vegan options first",
                              style: CustomTextStyles.titleLargeGray600)))
                ])));
  }

  /// Section Widget
  Widget _buildRecipeList(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(top: 91.v, right: 1.h),
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 22.v);
                },
                itemCount: 6,
                itemBuilder: (context, index) {
                  return RecipelistItemWidget(onTapImgRecipeImage: () {
                    onTapImgRecipeImage(context);
                  });
                })));
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

  /// Navigates to the getRecipesScreenOneScreen when the action is triggered.
  onTapTxtFavoritesFirst(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.getRecipesScreenOneScreen);
  }

  /// Navigates to the getRecipesScreenOneScreen when the action is triggered.
  onTapTxtMostIngredients(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.getRecipesScreenOneScreen);
  }

  /// Navigates to the getRecipesScreenOneScreen when the action is triggered.
  onTapTxtLeastIngredients(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.getRecipesScreenOneScreen);
  }

  /// Navigates to the getRecipesScreenOneScreen when the action is triggered.
  onTapTxtVeganOptionsFirst(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.getRecipesScreenOneScreen);
  }
}
