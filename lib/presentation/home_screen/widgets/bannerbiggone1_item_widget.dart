import 'package:flutter/material.dart';
import 'package:organix/core/app_export.dart';

// ignore: must_be_immutable
class Bannerbiggone1ItemWidget extends StatelessWidget {
  const Bannerbiggone1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgBannerBigg1,
      height: 135.v,
      width: 335.h,
      radius: BorderRadius.circular(
        5.h,
      ),
    );
  }
}
