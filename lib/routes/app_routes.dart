import 'package:flutter/material.dart';
import 'package:organix/presentation/logo_screen/logo_screen.dart';
import 'package:organix/presentation/splash_one_screen/splash_one_screen.dart';
import 'package:organix/presentation/splash_two_screen/splash_two_screen.dart';
import 'package:organix/presentation/splash_three_screen/splash_three_screen.dart';
import 'package:organix/presentation/login_screen/login_screen.dart';
import 'package:organix/presentation/signup_one_screen/signup_one_screen.dart';
import 'package:organix/presentation/signup_two_screen/signup_two_screen.dart';
import 'package:organix/presentation/signup_three_screen/signup_three_screen.dart';
import 'package:organix/presentation/signup_otp_screen/signup_otp_screen.dart';
import 'package:organix/presentation/signup_location_screen/signup_location_screen.dart';
import 'package:organix/presentation/home_one_container_screen/home_one_container_screen.dart';
import 'package:organix/presentation/all_category_screen/all_category_screen.dart';
import 'package:organix/presentation/best_product_two_screen/best_product_two_screen.dart';
import 'package:organix/presentation/best_product_one_screen/best_product_one_screen.dart';
import 'package:organix/presentation/my_cart_empty_screen/my_cart_empty_screen.dart';
import 'package:organix/presentation/best_product_screen/best_product_screen.dart';
import 'package:organix/presentation/home_screen/home_screen.dart';
import 'package:organix/presentation/my_cart_date_screen/my_cart_date_screen.dart';
import 'package:organix/presentation/my_cart_product_one_screen/my_cart_product_one_screen.dart';
import 'package:organix/presentation/my_cart_product_screen/my_cart_product_screen.dart';
import 'package:organix/presentation/payment_screen/payment_screen.dart';
import 'package:organix/presentation/payment_cod_screen/payment_cod_screen.dart';
import 'package:organix/presentation/payment_final_screen/payment_final_screen.dart';
import 'package:organix/presentation/payment_popup_screen/payment_popup_screen.dart';
import 'package:organix/presentation/notification_screen/notification_screen.dart';
import 'package:organix/presentation/wishlist_screen/wishlist_screen.dart';
import 'package:organix/presentation/profile_screen/profile_screen.dart';
import 'package:organix/presentation/profile_setting_screen/profile_setting_screen.dart';
import 'package:organix/presentation/my_order_screen/my_order_screen.dart';
import 'package:organix/presentation/track_order_screen/track_order_screen.dart';
import 'package:organix/presentation/profile_address_screen/profile_address_screen.dart';
import 'package:organix/presentation/app_setting_screen/app_setting_screen.dart';
import 'package:organix/presentation/delivery_to_one_screen/delivery_to_one_screen.dart';
import 'package:organix/presentation/deliver_to_current_location_one_screen/deliver_to_current_location_one_screen.dart';
import 'package:organix/presentation/deliver_to_new_address_screen/deliver_to_new_address_screen.dart';
import 'package:organix/presentation/delivery_to_screen/delivery_to_screen.dart';
import 'package:organix/presentation/deliver_to_current_location_screen/deliver_to_current_location_screen.dart';
import 'package:organix/presentation/deliver_to_new_address_one_screen/deliver_to_new_address_one_screen.dart';
import 'package:organix/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String logoScreen = '/logo_screen';

  static const String splashOneScreen = '/splash_one_screen';

  static const String splashTwoScreen = '/splash_two_screen';

  static const String splashThreeScreen = '/splash_three_screen';

  static const String loginScreen = '/login_screen';

  static const String signupOneScreen = '/signup_one_screen';

  static const String signupTwoScreen = '/signup_two_screen';

  static const String signupThreeScreen = '/signup_three_screen';

  static const String signupOtpScreen = '/signup_otp_screen';

  static const String signupLocationScreen = '/signup_location_screen';

  static const String homeOnePage = '/home_one_page';

  static const String homeOneContainerScreen = '/home_one_container_screen';

  static const String allCategoryScreen = '/all_category_screen';

  static const String bestProductTwoScreen = '/best_product_two_screen';

  static const String bestProductOneScreen = '/best_product_one_screen';

  static const String myCartEmptyScreen = '/my_cart_empty_screen';

  static const String bestProductScreen = '/best_product_screen';

  static const String homeScreen = '/home_screen';

  static const String myCartPage = '/my_cart_page';

  static const String myCartDateScreen = '/my_cart_date_screen';

  static const String myCartProductOneScreen = '/my_cart_product_one_screen';

  static const String myCartProductScreen = '/my_cart_product_screen';

  static const String paymentScreen = '/payment_screen';

  static const String paymentCodScreen = '/payment_cod_screen';

  static const String paymentFinalScreen = '/payment_final_screen';

  static const String paymentPopupScreen = '/payment_popup_screen';

  static const String notificationScreen = '/notification_screen';

  static const String wishlistScreen = '/wishlist_screen';

  static const String profileScreen = '/profile_screen';

  static const String profileSettingScreen = '/profile_setting_screen';

  static const String myOrderScreen = '/my_order_screen';

  static const String trackOrderScreen = '/track_order_screen';

  static const String profileAddressScreen = '/profile_address_screen';

  static const String appSettingScreen = '/app_setting_screen';

  static const String deliveryToOneScreen = '/delivery_to_one_screen';

  static const String deliverToCurrentLocationOneScreen =
      '/deliver_to_current_location_one_screen';

  static const String deliverToNewAddressScreen =
      '/deliver_to_new_address_screen';

  static const String deliveryToScreen = '/delivery_to_screen';

  static const String deliverToCurrentLocationScreen =
      '/deliver_to_current_location_screen';

  static const String deliverToNewAddressOneScreen =
      '/deliver_to_new_address_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    logoScreen: (context) => LogoScreen(),
    splashOneScreen: (context) => SplashOneScreen(),
    splashTwoScreen: (context) => SplashTwoScreen(),
    splashThreeScreen: (context) => SplashThreeScreen(),
    loginScreen: (context) => LoginScreen(),
    signupOneScreen: (context) => SignupOneScreen(),
    signupTwoScreen: (context) => SignupTwoScreen(),
    signupThreeScreen: (context) => SignupThreeScreen(),
    signupOtpScreen: (context) => SignupOtpScreen(),
    signupLocationScreen: (context) => SignupLocationScreen(),
    homeOneContainerScreen: (context) => HomeOneContainerScreen(),
    allCategoryScreen: (context) => AllCategoryScreen(),
    bestProductTwoScreen: (context) => BestProductTwoScreen(),
    bestProductOneScreen: (context) => BestProductOneScreen(),
    myCartEmptyScreen: (context) => MyCartEmptyScreen(),
    bestProductScreen: (context) => BestProductScreen(),
    homeScreen: (context) => HomeScreen(),
    myCartDateScreen: (context) => MyCartDateScreen(),
    myCartProductOneScreen: (context) => MyCartProductOneScreen(),
    myCartProductScreen: (context) => MyCartProductScreen(),
    paymentScreen: (context) => PaymentScreen(),
    paymentCodScreen: (context) => PaymentCodScreen(),
    paymentFinalScreen: (context) => PaymentFinalScreen(),
    paymentPopupScreen: (context) => PaymentPopupScreen(),
    notificationScreen: (context) => NotificationScreen(),
    wishlistScreen: (context) => WishlistScreen(),
    profileScreen: (context) => ProfileScreen(),
    profileSettingScreen: (context) => ProfileSettingScreen(),
    myOrderScreen: (context) => MyOrderScreen(),
    trackOrderScreen: (context) => TrackOrderScreen(),
    profileAddressScreen: (context) => ProfileAddressScreen(),
    appSettingScreen: (context) => AppSettingScreen(),
    deliveryToOneScreen: (context) => DeliveryToOneScreen(),
    deliverToCurrentLocationOneScreen: (context) =>
        DeliverToCurrentLocationOneScreen(),
    deliverToNewAddressScreen: (context) => DeliverToNewAddressScreen(),
    deliveryToScreen: (context) => DeliveryToScreen(),
    deliverToCurrentLocationScreen: (context) =>
        DeliverToCurrentLocationScreen(),
    deliverToNewAddressOneScreen: (context) => DeliverToNewAddressOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
