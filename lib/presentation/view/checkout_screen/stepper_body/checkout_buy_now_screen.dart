import 'package:flutter/material.dart';
import 'package:roomiz/application/extensions/extensions.dart';
import 'package:roomiz/presentation/resources/sizes_and_spaces/size_manager.dart';
import 'package:roomiz/presentation/resources/sizes_and_spaces/spaces_manager.dart';
import 'package:roomiz/presentation/resources/styles/colors/colors_manager.dart';
import 'package:roomiz/presentation/resources/styles/fonts/fonts_manager.dart';
import 'package:roomiz/presentation/resources/styles/text_styles/text_styles_manager.dart';

class CheckoutBuyNowScreen extends StatelessWidget {
  const CheckoutBuyNowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: PaddingManager.s10,
              ),
              child: Column(
                children: [
                  _cardDesign(
                    children: _userInfoCard(),
                  ),
                  SizeManager.s15.ph,
                  _cardDesign(
                    children: _paymentMethodCard(),
                  ),
                  SizeManager.s15.ph,
                  _cardDesign(
                    children: _deliveryMethodCard(),
                  ),
                  SizeManager.s30.ph,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _cardDesign({required List<Widget> children}) => Card(
        color: ColorsManager.kWhiteW400,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            SizeManager.s8,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: PaddingManager.s15,
            vertical: PaddingManager.s8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      );

  List<Widget> _userInfoCard() => <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'User Info',
              style: StylesManager.regularStyle(
                fontColor: ColorsManager.kPrimaryColor,
                fontSize: FontSizeManager.s18,
              ),
            ),
            Text(
              'Change',
              style: StylesManager.boldStyle(
                fontColor: ColorsManager.kGrayColor,
                fontSize: FontSizeManager.s14,
              ),
            )
          ],
        ),
        SizeManager.s10.ph,
        Text(
          'Mahmoud Hamed',
          style: StylesManager.mediumStyle(
            fontColor: ColorsManager.kPrimaryColor,
          ),
        ),
        SizeManager.s8.ph,
        Text(
          '10 Nassr Street Maadi, Cairo, Egypt',
          style: StylesManager.regularStyle(
            fontColor: ColorsManager.kLightGrayColor,
          ),
        ),
      ];

  List<Widget> _paymentMethodCard() => <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Payment Method',
              style: StylesManager.regularStyle(
                fontColor: ColorsManager.kPrimaryColor,
                fontSize: FontSizeManager.s18,
              ),
            ),
            Text(
              'Change',
              style: StylesManager.boldStyle(
                fontColor: ColorsManager.kGrayColor,
                fontSize: FontSizeManager.s14,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 50,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(SizeManager.s10),
                image: const DecorationImage(
                  image: AssetImage('assets/images/PayPal.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizeManager.s20.pw,
            Text(
              '**** **** **** 3947',
              style: StylesManager.regularStyle(
                fontColor: ColorsManager.kLightGrayColor,
                fontSize: FontSizeManager.s14,
              ),
            ),
          ],
        ),
      ];

  List<Widget> _deliveryMethodCard() => <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Delivery Method',
              style: StylesManager.regularStyle(
                fontColor: ColorsManager.kPrimaryColor,
                fontSize: FontSizeManager.s18,
              ),
            ),
            Text(
              'Change',
              style: StylesManager.boldStyle(
                fontColor: ColorsManager.kGrayColor,
                fontSize: FontSizeManager.s14,
              ),
            )
          ],
        ),
        SizeManager.s8.ph,
        Row(
          children: [
            Container(
              width: 70,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(SizeManager.s10),
                image: const DecorationImage(
                  image: AssetImage('assets/images/RoomIz.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizeManager.s20.pw,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'RoomIz',
                  style: StylesManager.boldStyle(
                    fontColor: ColorsManager.kBlackColor,
                    fontSize: FontSizeManager.s15,
                  ),
                ),
                Text(
                  'High Quality - 48 Hours',
                  style: StylesManager.regularStyle(
                    fontColor: ColorsManager.kLightGrayColor,
                    fontSize: FontSizeManager.s12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ];
}
