import 'package:flutter/material.dart';
import 'package:organix/core/app_export.dart';
import 'package:organix/widgets/app_bar/appbar_leading_image.dart';
import 'package:organix/widgets/app_bar/appbar_subtitle.dart';
import 'package:organix/widgets/app_bar/custom_app_bar.dart';
import 'package:organix/widgets/custom_drop_down.dart';
import 'package:organix/widgets/custom_elevated_button.dart';
import 'package:organix/widgets/custom_radio_button.dart';
import 'package:organix/widgets/custom_text_form_field.dart';

class DeliverToNewAddressScreen extends StatelessWidget {
  DeliverToNewAddressScreen({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  List<String> radioList = ["msg_current_location", "lbl_new_adderss"];

  TextEditingController addressController = TextEditingController();

  TextEditingController addressController1 = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList1 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
              _buildGroup339(context),
              SizedBox(height: 19.v),
              _buildAddress(context),
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
  Widget _buildGroup339(BuildContext context) {
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

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Column(
        children: [
          CustomTextFormField(
            controller: addressController,
            hintText: "Address Line 1",
          ),
          SizedBox(height: 16.v),
          CustomTextFormField(
            controller: addressController1,
            hintText: "Address Line 2",
            textInputAction: TextInputAction.done,
          ),
          SizedBox(height: 16.v),
          CustomDropDown(
            icon: Container(
              margin: EdgeInsets.fromLTRB(30.h, 13.v, 6.h, 13.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowdropdown,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            hintText: "City",
            items: dropdownItemList,
            onChanged: (value) {},
          ),
          SizedBox(height: 16.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomDropDown(
                width: 159.h,
                icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 13.v, 6.h, 13.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowdropdown,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                hintText: "State",
                items: dropdownItemList1,
                onChanged: (value) {},
              ),
              SizedBox(
                height: 50.v,
                width: 160.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 23.h),
                        child: Text(
                          "Pincode",
                          style: CustomTextStyles.bodyLargeGreen100,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 50.v,
                        width: 160.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15.h,
                          ),
                          border: Border.all(
                            color: theme.colorScheme.primary,
                            width: 1.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
