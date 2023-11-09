import 'package:flutter/material.dart';import 'package:organix/core/app_export.dart';import 'package:organix/widgets/custom_elevated_button.dart';import 'package:organix/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class SignupTwoScreen extends StatelessWidget {SignupTwoScreen({Key? key}) : super(key: key);

TextEditingController emailController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.all(20.h), child: Column(children: [SizedBox(height: 308.v, width: 266.h, child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgLogo1, height: 202.v, width: 158.h, alignment: Alignment.topCenter), CustomImageView(imagePath: ImageConstant.imgPureOrganic1, height: 212.v, width: 266.h, alignment: Alignment.bottomCenter)])), SizedBox(height: 53.v), CustomTextFormField(controller: emailController, hintText: "Email Id", textInputType: TextInputType.emailAddress), SizedBox(height: 23.v), CustomTextFormField(controller: phoneNumberController, hintText: "Phone Number", textInputAction: TextInputAction.done, textInputType: TextInputType.phone), Spacer(), SizedBox(height: 98.v), CustomElevatedButton(height: 50.v, text: "Next", onPressed: () {onTapNext(context);})]))))); } 
/// Navigates to the signupThreeScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.signupThreeScreen); } 
 }
