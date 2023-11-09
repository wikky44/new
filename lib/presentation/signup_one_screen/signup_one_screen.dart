import 'package:flutter/material.dart';import 'package:organix/core/app_export.dart';import 'package:organix/widgets/custom_elevated_button.dart';import 'package:organix/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class SignupOneScreen extends StatelessWidget {SignupOneScreen({Key? key}) : super(key: key);

TextEditingController userNameController = TextEditingController();

TextEditingController passwordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 20.v), child: Column(children: [_buildUserName1(context), SizedBox(height: 20.v), _buildPassword(context), SizedBox(height: 20.v), _buildConfirmpassword(context), Spacer(), SizedBox(height: 98.v), _buildNext(context)]))))); } 
/// Section Widget
Widget _buildUserName(BuildContext context) { return CustomTextFormField(width: 335.h, controller: userNameController, hintText: "Enter Username", alignment: Alignment.bottomCenter); } 
/// Section Widget
Widget _buildUserName1(BuildContext context) { return SizedBox(height: 352.v, width: 335.h, child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgLogo1, height: 202.v, width: 158.h, alignment: Alignment.topCenter), CustomImageView(imagePath: ImageConstant.imgPureOrganic1, height: 212.v, width: 266.h, alignment: Alignment.bottomCenter, margin: EdgeInsets.only(bottom: 44.v)), _buildUserName(context)])); } 
/// Section Widget
Widget _buildPassword(BuildContext context) { return CustomTextFormField(controller: passwordController, hintText: "Enter Password", textInputType: TextInputType.visiblePassword, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgEyeoff, height: 14.adaptSize, width: 14.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 50.v), obscureText: true, contentPadding: EdgeInsets.only(left: 22.h, top: 12.v, bottom: 12.v)); } 
/// Section Widget
Widget _buildConfirmpassword(BuildContext context) { return CustomTextFormField(controller: confirmpasswordController, hintText: "Confirm Password", textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgEyeoff, height: 14.adaptSize, width: 14.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 50.v), obscureText: true, contentPadding: EdgeInsets.only(left: 22.h, top: 13.v, bottom: 13.v)); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return CustomElevatedButton(height: 50.v, text: "Next", onPressed: () {onTapNext(context);}); } 
/// Navigates to the signupTwoScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.signupTwoScreen); } 
 }
