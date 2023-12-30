import '../get_recipes_screen_one_screen/widgets/recipesaved_item_widget.dart';
import 'package:adelina_s_application1/core/app_export.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:adelina_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:adelina_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:adelina_s_application1/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:adelina_s_application1/presentation/recipe_screen_bottomsheet/recipe_screen_bottomsheet.dart';

// ignore_for_file: must_be_immutable
class GetRecipesScreenOneScreen extends StatelessWidget {
  GetRecipesScreenOneScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 28.h),
                child: Column(children: [
                  SizedBox(height: 17.v),
                  CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.fromLTRB(14.h, 14.v, 19.h, 14.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgVector,
                              height: 20.adaptSize,
                              width: 20.adaptSize)),
                      hintText: "Filtered by: Favorites first",
                      items: dropdownItemList,
                      onChanged: (value) {}),
                  SizedBox(height: 23.v),
                  _buildRecipeSaved(context)
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
  Widget _buildRecipeSaved(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 22.v);
            },
            itemCount: 6,
            itemBuilder: (context, index) {
              return RecipesavedItemWidget(onTapImgRecipeImage: () {
                onTapImgRecipeImage(context);
              });
            }));
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
