import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:roomiz/application/extensions/extensions.dart';
import 'package:roomiz/presentation/resources/styles/colors/colors_manager.dart';
import 'package:roomiz/presentation/resources/styles/text_styles/text_styles_manager.dart';

class CheckoutInfoScreen extends StatelessWidget {
  const CheckoutInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.ph,
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: const Icon(Icons.person),
                labelText: 'Order Name',
              ),
            ),
            20.ph,
            IntlPhoneField(
              initialCountryCode: 'EG',
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                labelText: 'Phone Number',
              ),
              keyboardType: TextInputType.phone,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            5.ph,
            Text(
              'Your Location',
              style: StylesManager.boldStyle(
                fontColor: ColorsManager.kPrimaryColor,
              ),
            ),
            // TODO: Add Google Maps Design Here♦╝
          ],
        ),
      ),
    );
  }
}
