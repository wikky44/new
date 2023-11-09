import 'package:flutter/material.dart';import 'package:organix/core/app_export.dart';import 'package:organix/widgets/app_bar/appbar_leading_image.dart';import 'package:organix/widgets/app_bar/appbar_subtitle.dart';import 'package:organix/widgets/app_bar/custom_app_bar.dart';import 'package:organix/widgets/custom_floating_text_field.dart';import 'package:organix/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class ProfileSettingScreen extends StatelessWidget {ProfileSettingScreen({Key? key}) : super(key: key);

TextEditingController firstNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController userNameController = TextEditingController();

TextEditingController passwordController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray100, resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 6.v), child: Column(children: [_buildSixtySix(context), SizedBox(height: 6.v), _buildSixtyFive(context), SizedBox(height: 6.v), _buildSixtyFour(context), SizedBox(height: 5.v)]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 34.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIconlyLightOu, margin: EdgeInsets.only(left: 20.h, top: 41.v, bottom: 26.v), onTap: () {onTapIconlyLightOu(context);}), centerTitle: true, title: AppbarSubtitle(text: "Profile Settings", margin: EdgeInsets.only(top: 42.v, bottom: 19.v)), styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildFirstName(BuildContext context) { return CustomFloatingTextField(controller: firstNameController, labelText: "First Name", labelStyle: CustomTextStyles.titleLargeBlack900, hintText: "First Name"); } 
/// Section Widget
Widget _buildSixtySix(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 18.v), decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [_buildFirstName(context), SizedBox(height: 17.v), SizedBox(height: 58.v, width: 335.h, child: Stack(alignment: Alignment.topLeft, children: [Align(alignment: Alignment.bottomCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 7.v), decoration: AppDecoration.outlinePrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), Text("Johnson  ", style: CustomTextStyles.titleLargeBlack900)]))), Align(alignment: Alignment.topLeft, child: Container(height: 9.v, width: 77.h, margin: EdgeInsets.only(left: 12.h, top: 4.v), decoration: BoxDecoration(color: theme.colorScheme.onPrimary))), Align(alignment: Alignment.topLeft, child: Padding(padding: EdgeInsets.only(left: 15.h), child: Text("Second Name", style: CustomTextStyles.bodySmallPrimary)))])), SizedBox(height: 4.v)])); } 
/// Section Widget
Widget _buildEmail(BuildContext context) { return CustomFloatingTextField(controller: emailController, labelText: "Email Id", labelStyle: CustomTextStyles.bodyLargePrimary, hintText: "Email Id", textInputType: TextInputType.emailAddress, contentPadding: EdgeInsets.fromLTRB(23.h, 12.v, 23.h, 13.v)); } 
/// Section Widget
Widget _buildPhoneNumber(BuildContext context) { return CustomTextFormField(controller: phoneNumberController, hintText: "Phone Number", hintStyle: CustomTextStyles.bodyLargePrimary, textInputType: TextInputType.phone, borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL5); } 
/// Section Widget
Widget _buildSixtyFive(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 23.v), decoration: AppDecoration.fillOnPrimary, child: Column(children: [_buildEmail(context), SizedBox(height: 23.v), _buildPhoneNumber(context)])); } 
/// Section Widget
Widget _buildUserName(BuildContext context) { return CustomTextFormField(controller: userNameController, hintText: "Username", hintStyle: CustomTextStyles.bodyLargePrimary, borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL5); } 
/// Section Widget
Widget _buildPassword(BuildContext context) { return CustomTextFormField(controller: passwordController, hintText: "Password", hintStyle: CustomTextStyles.bodyLargePrimary, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, obscureText: true, borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL5); } 
/// Section Widget
Widget _buildSixtyFour(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 22.v), decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [_buildUserName(context), SizedBox(height: 23.v), _buildPassword(context)])); } 
/// Navigates to the profileScreen when the action is triggered.
onTapIconlyLightOu(BuildContext context) { Navigator.pushNamed(context, AppRoutes.profileScreen); } 
 }
