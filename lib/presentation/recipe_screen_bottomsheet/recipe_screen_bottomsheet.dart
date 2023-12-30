import 'package:adelina_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class RecipeScreenBottomsheet extends StatelessWidget {
  const RecipeScreenBottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 25.v),
        decoration: AppDecoration.fillGray200
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL25),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(width: 90.h, child: Divider(color: appTheme.gray700)),
          SizedBox(height: 23.v),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle9,
              height: 184.v,
              width: 334.h,
              radius: BorderRadius.circular(25.h)),
          SizedBox(height: 23.v),
          _buildRecipeScreenRow(context),
          SizedBox(height: 62.v)
        ]));
  }

  /// Section Widget
  Widget _buildRecipeScreenRow(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 18.h),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                  height: 173.v,
                  width: 249.h,
                  child: Stack(alignment: Alignment.topLeft, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: GestureDetector(
                            onTap: () {
                              onTapTxtIngredientsegg(context);
                            },
                            child: SizedBox(
                                width: 248.h,
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "Ingredients\n",
                                          style: theme.textTheme.titleMedium),
                                      TextSpan(
                                          text: "eggs\ncheese\nsalt\n\n",
                                          style: theme.textTheme.titleMedium),
                                      TextSpan(
                                          text: "Steps\n",
                                          style: theme.textTheme.titleMedium),
                                      TextSpan(
                                          text:
                                              "https://jamilacuisine.ro/omleta-delicioasa-reteta-video/ \n",
                                          style: theme.textTheme.titleMedium)
                                    ]),
                                    textAlign: TextAlign.left)))),
                    Align(
                        alignment: Alignment.topLeft,
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Text("Omletă", style: theme.textTheme.displaySmall),
                          SizedBox(height: 27.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgCheckmark,
                              height: 10.v,
                              width: 14.h,
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(right: 43.h)),
                          SizedBox(height: 22.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgCheckmark,
                              height: 10.v,
                              width: 14.h)
                        ]))
                  ])),
              CustomImageView(
                  imagePath: ImageConstant.imgFavorite,
                  height: 25.v,
                  width: 29.h,
                  margin: EdgeInsets.only(left: 36.h, top: 6.v, bottom: 141.v))
            ])));
  }

  onTapTxtIngredientsegg(BuildContext context) {
    // TODO: implement Actions
  }
}
