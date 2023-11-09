import 'package:flutter/material.dart';
import 'package:organix/core/app_export.dart';
import 'package:organix/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  const ProductcardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 1.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 171.v,
            width: 149.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLocation,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.topRight,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 18.v,
                    width: 39.h,
                    margin: EdgeInsets.only(top: 6.v),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVector1,
                          height: 18.v,
                          width: 39.h,
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text(
                              "-25%",
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 70.h,
                    margin: EdgeInsets.only(
                      left: 12.h,
                      bottom: 17.v,
                    ),
                    child: Text(
                      "Fresh Cashew \r\n500g",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "400",
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgCashews1,
                  height: 130.adaptSize,
                  width: 130.adaptSize,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 10.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgLocationPrimary,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(
                    left: 9.h,
                    bottom: 1.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 27.v,
                width: 65.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: EdgeInsets.only(top: 1.v),
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder2,
                        ),
                        child: Container(
                          height: 24.v,
                          width: 23.h,
                          decoration: BoxDecoration(
                            color: appTheme.blueGray100,
                            border: Border.all(
                              color: appTheme.gray50001,
                              width: 1.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 56.h,
                        margin: EdgeInsets.only(
                          left: 5.h,
                          right: 4.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "-",
                              style: theme.textTheme.bodyLarge,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.v),
                              child: Text(
                                "1",
                                style: CustomTextStyles.bodyLarge16,
                              ),
                            ),
                            Text(
                              "+",
                              style: theme.textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.h),
                child: CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(4.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup3,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }
}
