import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:roomiz/application/components/reusable_components.dart';
import 'package:roomiz/application/constants/constants.dart';
import 'package:roomiz/application/extensions/extensions.dart';
import 'package:roomiz/presentation/resources/sizes_and_spaces/size_manager.dart';
import 'package:roomiz/presentation/resources/styles/colors/colors_manager.dart';
import 'package:roomiz/presentation/resources/styles/fonts/fonts_manager.dart';
import 'package:roomiz/presentation/resources/styles/text_styles/text_styles_manager.dart';

class CheckoutPaymentScreen extends StatefulWidget {
  const CheckoutPaymentScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutPaymentScreen> createState() => _CheckoutPaymentScreenState();
}

class _CheckoutPaymentScreenState extends State<CheckoutPaymentScreen> {
  String paymentMethodOptionSelection = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: SizeManager.s15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizeManager.s15.ph,
            Text(
              AppConstants.paymentMethods,
              style: StylesManager.boldStyle(
                fontColor: ColorsManager.kPrimaryColor,
              ),
            ),
            SizeManager.s6.ph,
            ...List.generate(
              AppConstants.paymentMethodsList.length,
              (index) => paymentMethodOptionsBuilder(index: index),
            ),
            SizeManager.s15.ph,
            Text(
              'Card Information',
              style: StylesManager.boldStyle(
                fontColor: ColorsManager.kPrimaryColor,
              ),
            ),
            SizeManager.s6.ph,
            customTextFormField(
              hintText: 'Cardholder Name',
              filled: true,
            ),
            SizeManager.s15.ph,
            customTextFormField(
              hintText: 'Card Number',
              filled: true,
              keyboardType: TextInputType.number,
              filteringTextInputFormatter: [
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
            SizeManager.s15.ph,
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: customTextFormField(
                    hintText: 'Expiration Date',
                    keyboardType: TextInputType.datetime,
                    filled: true,
                    readOnly: true,
                    suffixIcon: IconButton(
                      onPressed: () {
                        print('icon clicked');
                      },
                      icon: const Icon(
                        Icons.date_range,
                        color: ColorsManager.kPrimaryColor,
                      ),
                    ),
                  ),
                ),
                SizeManager.s15.pw,
                Expanded(
                  child: customTextFormField(
                    hintText: 'CCV',
                    keyboardType: TextInputType.number,
                    filteringTextInputFormatter: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    filled: true,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget paymentMethodOptionsBuilder({required int index}) => Theme(
        data: Theme.of(context).copyWith(
          unselectedWidgetColor: ColorsManager.kDarkYellowColor,
          disabledColor: ColorsManager.kDarkYellowColor,
        ),
        child: ListTile(
          leading: Container(
            width: SizeManager.s45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: AssetImage(
                  'assets/images/PayPal.png',
                ),
              ),
            ),
          ),
          title: Text(
            AppConstants.paymentMethodsList[index],
            style: StylesManager.regularStyle(
              fontColor: ColorsManager.kGrayColor,
              fontSize: FontSizeManager.s15,
            ),
          ),
          trailing: Radio(
            value: AppConstants.paymentMethodsList[index],
            groupValue: paymentMethodOptionSelection,
            activeColor: ColorsManager.kDarkYellowColor,
            onChanged: (selected) {
              setState(() {
                paymentMethodOptionSelection = selected!;
              });
            },
          ),
        ),
      );
}
