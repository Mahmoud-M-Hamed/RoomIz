import 'package:flutter/material.dart';
import 'package:roomiz/application/constants/constants.dart';
import 'package:roomiz/application/extensions/extensions.dart';
import 'package:roomiz/presentation/resources/sizes_and_spaces/size_manager.dart';
import 'package:roomiz/presentation/resources/sizes_and_spaces/spaces_manager.dart';
import 'package:roomiz/presentation/resources/styles/colors/colors_manager.dart';
import 'package:roomiz/presentation/resources/styles/fonts/fonts_manager.dart';
import 'package:roomiz/presentation/resources/styles/text_styles/text_styles_manager.dart';

class CheckoutDeliveryMethodScreen extends StatefulWidget {
  const CheckoutDeliveryMethodScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutDeliveryMethodScreen> createState() =>
      _CheckoutDeliveryMethodScreenState();
}

class _CheckoutDeliveryMethodScreenState
    extends State<CheckoutDeliveryMethodScreen> {
  String isSelected = ' ';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizeManager.s10.ph,
        Padding(
          padding: const EdgeInsets.only(left: PaddingManager.s15),
          child: Text(
            AppConstants.deliveryMethods,
            style: StylesManager.boldStyle(
              fontColor: ColorsManager.kPrimaryColor,
            ),
          ),
        ),
        SizeManager.s6.ph,
        Expanded(
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemCount: AppConstants.deliveryMethodsCount,
            separatorBuilder: (ctx, index) => SizeManager.s15.ph,
            itemBuilder: (ctx, index) =>
                deliveryMethodCardBuilder(index: index),
          ),
        ),
        SizeManager.s6.ph,
      ],
    );
  }

  Widget deliveryMethodCardBuilder({required int index}) => Card(
        elevation: 5,
        margin: const EdgeInsetsDirectional.symmetric(
          horizontal: 15,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            leading: Container(
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(SizeManager.s20),
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/RoomIz.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              AppConstants.deliveryMethodsList[index],
              style: StylesManager.mediumStyle(
                fontColor: ColorsManager.kBlackColor,
                fontSize: FontSizeManager.s16,
              ),
            ),
            subtitle: Text(
              'High Quality - 48 Hours',
              style: StylesManager.regularStyle(
                fontColor: ColorsManager.kLightGrayColor,
                fontSize: FontSizeManager.s12,
              ),
            ),
            trailing: Radio(
              value: AppConstants.deliveryMethodsList[index],
              groupValue: isSelected,
              activeColor: ColorsManager.kDarkYellowColor,
              onChanged: (selected) {
                setState(() {
                  isSelected = selected!;
                });
              },
            ),
          ),
        ),
      );
}
