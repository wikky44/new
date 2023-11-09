import 'package:flutter/material.dart';
import 'package:organix/core/app_export.dart';

class PaymentPopupScreen extends StatelessWidget {
  const PaymentPopupScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup8,
                height: 88.adaptSize,
                width: 88.adaptSize,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 57.h),
              ),
              SizedBox(height: 18.v),
              Text(
                "Thank You",
                style: CustomTextStyles.titleLargeBlack900,
              ),
              Text(
                "Your Order is confirmed",
                style: theme.textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
