import 'package:flutter/material.dart';import 'package:organix/core/app_export.dart';import 'package:organix/presentation/home_one_page/home_one_page.dart';import 'package:organix/presentation/my_cart_page/my_cart_page.dart';import 'package:organix/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class HomeOneContainerScreen extends StatelessWidget {HomeOneContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homeOnePage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homeOnePage; case BottomBarEnum.Iconlylightoutlinebag: return AppRoutes.myCartPage; case BottomBarEnum.Heart: return "/"; case BottomBarEnum.Profile: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.homeOnePage: return HomeOnePage(); case AppRoutes.myCartPage: return MyCartPage(); default: return DefaultWidget();} } 
 }
