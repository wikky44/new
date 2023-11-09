import 'package:flutter/material.dart';
import 'package:organix/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          splashOne: "Logo",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.logoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Splash_One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Splash_Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Splash_Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Signup_One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signupOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Signup_Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signupTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Signup_Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signupThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Signup_OTP",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signupOtpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Signup_Location",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signupLocationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Home One - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeOneContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "All_Category",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.allCategoryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Best_Product Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bestProductTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Best_Product One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bestProductOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "My_Cart_Empty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myCartEmptyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Best_Product",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bestProductScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Home",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "My_Cart_Date",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myCartDateScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "My_Cart_Product One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myCartProductOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "My_Cart_Product",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myCartProductScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Payment",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Payment_COD",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentCodScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Payment_Final",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentFinalScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Payment_Popup",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentPopupScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Notification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Wishlist",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.wishlistScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Profile_Setting",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileSettingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "My_Order",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myOrderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "track_Order",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.trackOrderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Profile_Address",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileAddressScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "App_Setting",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appSettingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Delivery_to One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.deliveryToOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Deliver_to_Current_location One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.deliverToCurrentLocationOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Deliver_to_new_address",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.deliverToNewAddressScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Delivery_to",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.deliveryToScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Deliver_to_Current_location",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.deliverToCurrentLocationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashOne: "Deliver_to_new_address One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.deliverToNewAddressOneScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String splashOne,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  splashOne,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
