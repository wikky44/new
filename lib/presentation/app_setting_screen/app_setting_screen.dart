import 'package:flutter/material.dart';import 'package:organix/core/app_export.dart';import 'package:organix/widgets/app_bar/appbar_leading_image.dart';import 'package:organix/widgets/app_bar/appbar_subtitle.dart';import 'package:organix/widgets/app_bar/custom_app_bar.dart';import 'package:organix/widgets/custom_switch.dart';
// ignore_for_file: must_be_immutable
class AppSettingScreen extends StatelessWidget {AppSettingScreen({Key? key}) : super(key: key);

bool isSelectedSwitch = false;

bool isSelectedSwitch1 = false;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 42.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildNotification(context), SizedBox(height: 15.v), _buildDarkMode(context), SizedBox(height: 14.v), Text("Language", style: CustomTextStyles.bodyLarge16), SizedBox(height: 15.v), Text("About Us", style: CustomTextStyles.bodyLarge16), SizedBox(height: 12.v), Text("Terms and Condition", style: CustomTextStyles.bodyLarge16), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 34.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIconlyLightOu, margin: EdgeInsets.only(left: 20.h, top: 41.v, bottom: 26.v), onTap: () {onTapIconlyLightOu(context);}), centerTitle: true, title: AppbarSubtitle(text: "Settings", margin: EdgeInsets.only(top: 42.v, bottom: 18.v)), styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildNotification(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Notification", style: CustomTextStyles.bodyLarge16), CustomSwitch(value: isSelectedSwitch, onChange: (value) {isSelectedSwitch = value;})])); } 
/// Section Widget
Widget _buildDarkMode(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Dark Mode", style: CustomTextStyles.bodyLarge16), CustomSwitch(margin: EdgeInsets.only(top: 2.v), value: isSelectedSwitch1, onChange: (value) {isSelectedSwitch1 = value;})])); } 
/// Navigates to the profileScreen when the action is triggered.
onTapIconlyLightOu(BuildContext context) { Navigator.pushNamed(context, AppRoutes.profileScreen); } 
 }
