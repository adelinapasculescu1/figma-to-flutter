import 'package:adelina_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RecipelistItemWidget extends StatelessWidget {
  RecipelistItemWidget({
    Key? key,
    this.onTapImgRecipeImage,
  }) : super(
          key: key,
        );

  VoidCallback? onTapImgRecipeImage;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 168.v,
        width: 333.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle5,
              height: 168.v,
              width: 333.h,
              radius: BorderRadius.circular(
                25.h,
              ),
              alignment: Alignment.center,
              onTap: () {
                onTapImgRecipeImage!.call();
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(top: 123.v),
                padding: EdgeInsets.symmetric(
                  horizontal: 23.h,
                  vertical: 11.v,
                ),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        "Omletă",
                        style: CustomTextStyles.titleLargeBlack900,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFavorite,
                      height: 14.v,
                      width: 17.h,
                      margin: EdgeInsets.only(
                        top: 4.v,
                        right: 7.h,
                        bottom: 2.v,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
