import 'package:flutter/material.dart';
import 'package:organix/core/app_export.dart';

// ignore: must_be_immutable
class ArtboardelevenItemWidget extends StatelessWidget {
  const ArtboardelevenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgArtboard11,
                height: 159.v,
                width: 251.h,
                radius: BorderRadius.circular(
                  20.h,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgOrangeBanner1,
                height: 159.v,
                width: 253.h,
                radius: BorderRadius.circular(
                  20.h,
                ),
                margin: EdgeInsets.only(left: 15.h),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
