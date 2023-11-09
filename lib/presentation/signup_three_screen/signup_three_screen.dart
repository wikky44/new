import 'package:flutter/material.dart';import 'package:organix/core/app_export.dart';import 'package:organix/widgets/custom_drop_down.dart';import 'package:organix/widgets/custom_elevated_button.dart';import 'package:organix/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class SignupThreeScreen extends StatelessWidget {SignupThreeScreen({Key? key}) : super(key: key);

TextEditingController addressController = TextEditingController();

TextEditingController addressController1 = TextEditingController();

List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

TextEditingController pincodeController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 20.v), child: Column(children: [_buildAddress1(context), SizedBox(height: 16.v), _buildAddress2(context), SizedBox(height: 16.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 13.v, 6.h, 13.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdropdown, height: 24.adaptSize, width: 24.adaptSize)), hintText: "City", items: dropdownItemList, onChanged: (value) {}), SizedBox(height: 16.v), _buildPincode1(context), SizedBox(height: 74.v), _buildNext(context), SizedBox(height: 5.v)]))))); } 
/// Section Widget
Widget _buildAddress(BuildContext context) { return CustomTextFormField(width: 335.h, controller: addressController, hintText: "Address Line 1", alignment: Alignment.bottomCenter); } 
/// Section Widget
Widget _buildAddress1(BuildContext context) { return SizedBox(height: 352.v, width: 335.h, child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgLogo1, height: 202.v, width: 158.h, alignment: Alignment.topCenter), CustomImageView(imagePath: ImageConstant.imgPureOrganic1, height: 212.v, width: 266.h, alignment: Alignment.bottomCenter, margin: EdgeInsets.only(bottom: 44.v)), _buildAddress(context)])); } 
/// Section Widget
Widget _buildAddress2(BuildContext context) { return CustomTextFormField(controller: addressController1, hintText: "Address Line 2"); } 
/// Section Widget
Widget _buildPincode(BuildContext context) { return CustomTextFormField(width: 160.h, controller: pincodeController, hintText: "Pincode", textInputAction: TextInputAction.done, textInputType: TextInputType.number); } 
/// Section Widget
Widget _buildPincode1(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomDropDown(width: 159.h, icon: Container(margin: EdgeInsets.fromLTRB(30.h, 13.v, 6.h, 13.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdropdown, height: 24.adaptSize, width: 24.adaptSize)), hintText: "State", items: dropdownItemList1, onChanged: (value) {}), _buildPincode(context)]); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return CustomElevatedButton(height: 50.v, text: "Next", onPressed: () {onTapNext(context);}); } 
/// Navigates to the signupOtpScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.signupOtpScreen); } 
 }
