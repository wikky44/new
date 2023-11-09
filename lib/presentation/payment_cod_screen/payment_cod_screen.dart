import 'package:flutter/material.dart';import 'package:organix/core/app_export.dart';import 'package:organix/widgets/app_bar/appbar_leading_image.dart';import 'package:organix/widgets/app_bar/appbar_subtitle.dart';import 'package:organix/widgets/app_bar/custom_app_bar.dart';import 'package:organix/widgets/custom_elevated_button.dart';import 'package:organix/widgets/custom_radio_button.dart';
// ignore_for_file: must_be_immutable
class PaymentCodScreen extends StatelessWidget {PaymentCodScreen({Key? key}) : super(key: key);

String radioGroup = "";

String radioGroup1 = "";

List<String> radioList = ["msg_debit_credit_card", "lbl_net_banking"];

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(height: 665.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.bottomCenter, child: Container(padding: EdgeInsets.symmetric(vertical: 35.v), decoration: AppDecoration.fillGray, child: _buildCashOnDelivery(context))), Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(top: 124.v), child: SizedBox(width: 373.h, child: Divider()))), Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(top: 179.v), child: SizedBox(width: 373.h, child: Divider())))])), bottomNavigationBar: _buildNext(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 37.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIconlyLightOu, margin: EdgeInsets.only(left: 23.h, top: 43.v, bottom: 24.v)), centerTitle: true, title: AppbarSubtitle(text: "Payment", margin: EdgeInsets.only(top: 44.v, bottom: 16.v)), styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildCashOnDelivery(BuildContext context) { return Container(padding: EdgeInsets.symmetric(vertical: 16.v), decoration: AppDecoration.fillOnPrimary, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 20.h), child: CustomRadioButton(text: "Cash on Delivery", value: "Cash on Delivery", groupValue: radioGroup, onChange: (value) {radioGroup = value;})), SizedBox(height: 14.v), Divider(), SizedBox(height: 14.v), Padding(padding: EdgeInsets.only(left: 20.h), child: Column(children: [CustomRadioButton(text: "Debit / Credit Card", value: radioList[0], groupValue: radioGroup1, onChange: (value) {radioGroup1 = value;}), Padding(padding: EdgeInsets.only(top: 33.v, right: 55.h), child: CustomRadioButton(text: "Net Banking", value: radioList[1], groupValue: radioGroup1, onChange: (value) {radioGroup1 = value;}))])), SizedBox(height: 14.v)])); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return Container(margin: EdgeInsets.only(left: 18.h, right: 21.h, bottom: 11.v), decoration: AppDecoration.outlineLightgreen100, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(height: 38.v, width: 84.h, margin: EdgeInsets.only(top: 4.v, bottom: 1.v), child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topCenter, child: Text("30.00", style: CustomTextStyles.titleMediumSemiBold18)), Align(alignment: Alignment.bottomCenter, child: Text("Total Amount", style: CustomTextStyles.labelLargeGray50001)), CustomImageView(imagePath: ImageConstant.imgCurrencyRupee, height: 21.v, width: 22.h, alignment: Alignment.topLeft, margin: EdgeInsets.only(top: 3.v))])), CustomElevatedButton(width: 113.h, text: "Next", buttonStyle: CustomButtonStyles.outlineBlack, buttonTextStyle: CustomTextStyles.titleLargeOnPrimarySemiBold, onPressed: () {onTapNext(context);})])); } 
/// Navigates to the paymentFinalScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.paymentFinalScreen); } 
 }
