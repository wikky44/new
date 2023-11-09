import 'package:flutter/material.dart';
import 'package:organix/core/app_export.dart';

// ignore: must_be_immutable
class Artboardeleven1ItemWidget extends StatelessWidget {
  const Artboardeleven1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: CustomImageView(
        imagePath: ImageConstant.imgArtboard11,
        height: 159.v,
        width: 251.h,
        radius: BorderRadius.circular(
          20.h,
        ),
        margin: EdgeInsets.only(right: 104.h),
      ),
    );
  }
}
