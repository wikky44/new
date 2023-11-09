import 'package:flutter/material.dart';
import 'package:organix/core/app_export.dart';
import 'package:organix/widgets/app_bar/appbar_leading_image.dart';
import 'package:organix/widgets/app_bar/appbar_subtitle.dart';
import 'package:organix/widgets/app_bar/custom_app_bar.dart';
import 'package:organix/widgets/custom_elevated_button.dart';
import 'package:organix/widgets/custom_radio_button.dart';

class DeliverToCurrentLocationOneScreen extends StatelessWidget {
  DeliverToCurrentLocationOneScreen({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  List<String> radioList = ["msg_current_location", "lbl_new_adderss"];

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
              _buildGroup352(context),
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
        text: "Deliver to",
      ),
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildGroup352(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 19.v,
            right: 184.h,
          ),
          child: CustomRadioButton(
            text: "Current Location",
            value: radioList[0],
            groupValue: radioGroup,
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20.h, 17.v, 213.h, 17.v),
          child: CustomRadioButton(
            text: "New Adderss",
            value: radioList[2],
            groupValue: radioGroup,
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
      ],
    );
  }
}
