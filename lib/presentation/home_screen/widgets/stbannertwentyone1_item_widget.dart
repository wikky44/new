import 'package:flutter/material.dart';
import 'package:organix/core/app_export.dart';

// ignore: must_be_immutable
class Stbannertwentyone1ItemWidget extends StatelessWidget {
  const Stbannertwentyone1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.img1stBanner21,
      height: 125.v,
      width: 335.h,
      radius: BorderRadius.circular(
        10.h,
      ),
    );
  }
}
