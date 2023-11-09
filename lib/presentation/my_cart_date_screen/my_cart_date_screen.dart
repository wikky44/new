import 'package:flutter/material.dart';
import 'package:organix/core/app_export.dart';
import 'package:organix/widgets/app_bar/appbar_leading_image.dart';
import 'package:organix/widgets/app_bar/appbar_subtitle.dart';
import 'package:organix/widgets/app_bar/custom_app_bar.dart';
import 'package:organix/widgets/custom_elevated_button.dart';
import 'package:organix/widgets/custom_radio_button.dart';

class MyCartDateScreen extends StatelessWidget {
  MyCartDateScreen({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  List<String> radioList = ["lbl_07_00_13_00", "lbl_13_00_22_00"];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 70.v),
          padding: EdgeInsets.symmetric(vertical: 16.v),
          decoration: AppDecoration.fillGray,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 3.v),
              _buildSun(context),
              SizedBox(height: 11.v),
              _buildGroup346(context),
              Spacer(),
              CustomElevatedButton(
                text: "Continue",
                margin: EdgeInsets.symmetric(horizontal: 53.h),
                buttonStyle: CustomButtonStyles.fillPrimaryTL5,
                buttonTextStyle: CustomTextStyles.titleLargeOnPrimary,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 37.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconlyLightOu,
        margin: EdgeInsets.only(
          left: 23.h,
          top: 43.v,
          bottom: 24.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Select Slot",
        margin: EdgeInsets.only(
          top: 41.v,
          bottom: 19.v,
        ),
      ),
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildSun(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.v),
      decoration: AppDecoration.fillOnPrimary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sun",
                  style: CustomTextStyles.bodyLargeGray50001,
                ),
                Text(
                  "Mon",
                  style: CustomTextStyles.bodyLargeGray50001,
                ),
                Text(
                  "Tue",
                  style: CustomTextStyles.bodyLargeGray50001,
                ),
                Text(
                  "Wed",
                  style: CustomTextStyles.bodyLargeGray50001,
                ),
                Text(
                  "Thu",
                  style: CustomTextStyles.bodyLargeGray50001,
                ),
                Text(
                  "Fri",
                  style: CustomTextStyles.bodyLargeGray50001,
                ),
                Text(
                  "Sat",
                  style: CustomTextStyles.bodyLargeGray50001,
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(
              left: 28.h,
              right: 25.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "12",
                  style: CustomTextStyles.bodyLarge16,
                ),
                Spacer(
                  flex: 23,
                ),
                Text(
                  "13",
                  style: CustomTextStyles.bodyLarge16,
                ),
                Spacer(
                  flex: 18,
                ),
                Text(
                  "14",
                  style: CustomTextStyles.bodyLarge16,
                ),
                Spacer(
                  flex: 20,
                ),
                SizedBox(
                  height: 24.v,
                  width: 22.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(
                              11.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "15",
                          style: CustomTextStyles.bodyLargeOnPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 18,
                ),
                Text(
                  "16",
                  style: CustomTextStyles.bodyLarge16,
                ),
                Spacer(
                  flex: 19,
                ),
                Text(
                  "17",
                  style: CustomTextStyles.bodyLarge16,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.h),
                  child: Text(
                    "18",
                    style: CustomTextStyles.bodyLarge16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Divider(),
          SizedBox(height: 13.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Today",
                  style: CustomTextStyles.bodyMediumPrimary,
                ),
                TextSpan(
                  text: ", Wednesday June 15",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGroup346(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 17.v,
            right: 225.h,
          ),
          child: CustomRadioButton(
            text: "07:00 - 13:00",
            value: radioList[0],
            groupValue: radioGroup,
            textStyle: theme.textTheme.bodyMedium,
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20.h, 15.v, 225.h, 15.v),
          child: CustomRadioButton(
            text: "13:00 - 22:00",
            value: radioList[1],
            groupValue: radioGroup,
            textStyle: theme.textTheme.bodyMedium,
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
      ],
    );
  }
}
