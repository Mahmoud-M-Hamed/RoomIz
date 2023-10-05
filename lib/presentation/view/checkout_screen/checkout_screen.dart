import 'package:flutter/material.dart';
import 'package:roomiz/application/components/reusable_components.dart';
import 'package:roomiz/application/constants/constants.dart';
import 'package:roomiz/application/extensions/extensions.dart';
import 'package:roomiz/presentation/resources/sizes_and_spaces/size_manager.dart';
import 'package:roomiz/presentation/resources/sizes_and_spaces/spaces_manager.dart';
import 'package:roomiz/presentation/resources/styles/colors/colors_manager.dart';
import 'package:roomiz/presentation/resources/styles/icons/custom_icons.dart';
import 'package:roomiz/presentation/view/checkout_screen/stepper_body/checkout_info_screen.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: customAppBar(
          context: context,
          appBarTitle: AppConstants.checkout,
        ),
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: PaddingManager.s15,
                ),
                height: SizeManager.s90,
                width: double.infinity,
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: ColorsManager.kPrimaryColor,
                      child: Icon(
                        Icons.info,
                        color: ColorsManager.kDarkYellowColor,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 4,
                        color: ColorsManager.kLightGrayColor,
                      ),
                    ),
                    const CircleAvatar(
                      backgroundColor: ColorsManager.kPrimaryColor,
                      child: Icon(
                        CustomIcons.truck,
                        color: ColorsManager.kAppBackgroundColor,
                        size: 17,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 4,
                        color: ColorsManager.kLightGrayColor,
                      ),
                    ),
                    const CircleAvatar(
                      backgroundColor: ColorsManager.kPrimaryColor,
                      child: Icon(
                        Icons.credit_card_outlined,
                        color: ColorsManager.kAppBackgroundColor,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 4,
                        color: ColorsManager.kLightGrayColor,
                      ),
                    ),
                    const CircleAvatar(
                      backgroundColor: ColorsManager.kPrimaryColor,
                      child: Icon(
                        CustomIcons.okCircled,
                        color: ColorsManager.kAppBackgroundColor,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.9,
                child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                    itemBuilder: (context, index) {
                  return const CheckoutInfoScreen();
                }),
              ),
              Container(
                height: SizeManager.s180,
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsetsDirectional.all(PaddingManager.s25),
                decoration: const BoxDecoration(
                  color: ColorsManager.kWhiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      SizeManager.s30,
                    ),
                    topRight: Radius.circular(
                      SizeManager.s30,
                    ),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: ColorsManager.kGrayColor,
                      spreadRadius: SizeManager.s6,
                      blurRadius: SizeManager.s20,
                      offset: Offset(SizeManager.s10, SizeManager.s10),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sub Total',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: ColorsManager.kPrimaryColor,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'EGP 800.00',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: ColorsManager.kGrayColor,
                          ),
                        ),
                      ],
                    ),
                    SizeManager.s30.ph,
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: ColorsManager.kPrimaryColor,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'EGP 815.00',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: ColorsManager.kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                    SizeManager.s10.ph,
                    customButton(
                        onPressed: () {},
                        buttonTitle: 'Next',
                        buttonTitleColor: Colors.white,
                        buttonIcon: Icons.navigate_next_outlined),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
