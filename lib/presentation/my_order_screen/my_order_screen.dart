import '../my_order_screen/widgets/orderdetails_item_widget.dart';import 'package:flutter/material.dart';import 'package:organix/core/app_export.dart';import 'package:organix/widgets/app_bar/appbar_leading_image.dart';import 'package:organix/widgets/app_bar/appbar_subtitle.dart';import 'package:organix/widgets/app_bar/custom_app_bar.dart';class MyOrderScreen extends StatelessWidget {const MyOrderScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray100, appBar: _buildAppBar(context), body: Padding(padding: EdgeInsets.only(top: 6.v), child: ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 6.v);}, itemCount: 3, itemBuilder: (context, index) {return OrderdetailsItemWidget(onTapImgDetails: () {onTapImgDetails(context);});})))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 34.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIconlyLightOu, margin: EdgeInsets.only(left: 20.h, top: 41.v, bottom: 26.v), onTap: () {onTapIconlyLightOu(context);}), centerTitle: true, title: AppbarSubtitle(text: "My order", margin: EdgeInsets.only(top: 42.v, bottom: 18.v)), styleType: Style.bgShadow); } 
/// Navigates to the myCartProductOneScreen when the action is triggered.
onTapImgDetails(BuildContext context) { Navigator.pushNamed(context, AppRoutes.myCartProductOneScreen); } 
/// Navigates to the profileScreen when the action is triggered.
onTapIconlyLightOu(BuildContext context) { Navigator.pushNamed(context, AppRoutes.profileScreen); } 
 }
