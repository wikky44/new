import 'package:flutter/material.dart';import 'package:organix/core/app_export.dart';import 'package:organix/widgets/app_bar/appbar_leading_image.dart';import 'package:organix/widgets/app_bar/appbar_subtitle.dart';import 'package:organix/widgets/app_bar/custom_app_bar.dart';import 'package:organix/widgets/custom_drop_down.dart';import 'package:organix/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class ProfileAddressScreen extends StatelessWidget {ProfileAddressScreen({Key? key}) : super(key: key);

TextEditingController addressController = TextEditingController();

TextEditingController addressController1 = TextEditingController();

List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray100, resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 21.v), child: Column(children: [_buildSeventyFive(context), SizedBox(height: 33.v), _buildSeventyFour(context), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 34.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIconlyLightOu, margin: EdgeInsets.only(left: 20.h, top: 41.v, bottom: 26.v), onTap: () {onTapIconlyLightOu(context);}), centerTitle: true, title: AppbarSubtitle(text: "Address"), styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildSeventyFive(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 19.v), decoration: AppDecoration.fillOnPrimary, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Text("Current Location", style: theme.textTheme.titleMedium), SizedBox(height: 4.v), Text("Delivering to: Kakkanad, 682030", style: theme.textTheme.bodyMedium), SizedBox(height: 2.v)])); } 
/// Section Widget
Widget _buildSeventyFour(BuildContext context) { return Container(padding: EdgeInsets.all(19.h), decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("Address", style: theme.textTheme.titleMedium)), SizedBox(height: 6.v), CustomTextFormField(controller: addressController, hintText: "Address Line 1"), SizedBox(height: 16.v), CustomTextFormField(controller: addressController1, hintText: "Address Line 2", textInputAction: TextInputAction.done), SizedBox(height: 16.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 13.v, 6.h, 13.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdropdown, height: 24.adaptSize, width: 24.adaptSize)), hintText: "City", items: dropdownItemList, onChanged: (value) {}), SizedBox(height: 16.v), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomDropDown(width: 159.h, icon: Container(margin: EdgeInsets.fromLTRB(30.h, 13.v, 6.h, 13.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdropdown, height: 24.adaptSize, width: 24.adaptSize)), hintText: "State", items: dropdownItemList1, onChanged: (value) {}), SizedBox(height: 50.v, width: 160.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 23.h), child: Text("Pincode", style: CustomTextStyles.bodyLargeGreen100))), Align(alignment: Alignment.center, child: Container(height: 50.v, width: 160.h, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.h), border: Border.all(color: theme.colorScheme.primary, width: 1.h))))]))]), SizedBox(height: 5.v)])); } 
/// Navigates to the profileScreen when the action is triggered.
onTapIconlyLightOu(BuildContext context) { Navigator.pushNamed(context, AppRoutes.profileScreen); } 
 }
