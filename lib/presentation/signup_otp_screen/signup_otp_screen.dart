import 'package:flutter/material.dart';import 'package:organix/core/app_export.dart';import 'package:organix/widgets/custom_elevated_button.dart';import 'package:organix/widgets/custom_pin_code_text_field.dart';class SignupOtpScreen extends StatelessWidget {const SignupOtpScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: EdgeInsets.all(20.h), child: Column(children: [SizedBox(height: 308.v, width: 266.h, child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgLogo1, height: 202.v, width: 158.h, alignment: Alignment.topCenter), CustomImageView(imagePath: ImageConstant.imgPureOrganic1, height: 212.v, width: 266.h, alignment: Alignment.bottomCenter)])), SizedBox(height: 18.v), Text("Verification", style: theme.textTheme.titleMedium), SizedBox(height: 8.v), Text("Enter OTP code sent to your number", style: theme.textTheme.bodyMedium), SizedBox(height: 50.v), Padding(padding: EdgeInsets.only(left: 34.h, right: 33.h), child: CustomPinCodeTextField(context: context, onChanged: (value) {})), Spacer(), SizedBox(height: 98.v), CustomElevatedButton(height: 50.v, text: "Submit", onPressed: () {onTapSubmit(context);})])))); } 
/// Navigates to the signupLocationScreen when the action is triggered.
onTapSubmit(BuildContext context) { Navigator.pushNamed(context, AppRoutes.signupLocationScreen); } 
 }