import 'package:flutter/material.dart';
import 'package:roomiz/application/constants/constants.dart';
import 'package:roomiz/presentation/resources/theme/theme_manager.dart';
import 'package:roomiz/presentation/view/checkout_screen/checkout_screen.dart';

class RoomIz extends StatelessWidget {
  const RoomIz._internalSingleton();

  static const RoomIz roomIz = RoomIz._internalSingleton();

  factory RoomIz() => roomIz;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appName,
      theme: AppTheme.appTheme,
      home: CheckoutScreen(),
    );
  }
}
