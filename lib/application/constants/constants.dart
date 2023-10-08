import 'package:flutter/material.dart';

class AppConstants {
  static const double zero = 0.0;
  static const int deliveryMethodsCount = 5;

  static const List<String> deliveryMethodsList = [
    'Aramex',
    'FedEx',
    'DHL',
    'Bosta',
    'RoomIz',
  ];

  static const List<String> paymentMethodsList = [
    'PayPal',
    'Credit Card',
    'Vodafone Cash',
  ];

  static const String appName = 'RoomIz';
  static const String deliveryMethods = 'Delivery Methods';
  static const String paymentMethods = 'Payment Methods';
  static const String checkout = 'Checkout';

  static double getDeviceHeight({required BuildContext context}) =>
      MediaQuery.of(context).size.height;

  static double getDeviceWidth({required BuildContext context}) =>
      MediaQuery.of(context).size.width;
}
