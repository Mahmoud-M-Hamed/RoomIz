import 'package:flutter/material.dart';
import 'package:roomiz/application/components/reusable_components.dart';
import 'package:roomiz/application/constants/constants.dart';
import 'package:roomiz/application/extensions/extensions.dart';
import 'package:roomiz/presentation/resources/sizes_and_spaces/size_manager.dart';
import 'package:roomiz/presentation/resources/styles/colors/colors_manager.dart';
import 'package:roomiz/presentation/resources/styles/icons/custom_icons.dart';
import 'package:roomiz/presentation/view/checkout_screen/order_success_or_fail.dart';
import 'package:roomiz/presentation/view/checkout_screen/stepper_body/checkout_buy_now_screen.dart';
import 'package:roomiz/presentation/view/checkout_screen/stepper_body/checkout_delivery_screen.dart';
import 'package:roomiz/presentation/view/checkout_screen/stepper_body/checkout_info_screen.dart';
import 'package:roomiz/presentation/view/checkout_screen/stepper_body/checkout_payment_screen.dart';
import 'package:roomiz/presentation/view/checkout_screen/widgets/stepper.dart';
import 'package:roomiz/presentation/view/checkout_screen/widgets/total_price_sheet.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int stepperIndex = 0;
  PageController pageController = PageController();

  final List<Widget> checkoutProcessScreens = [
    const CheckoutInfoScreen(),
    const CheckoutDeliveryMethodScreen(),
    const CheckoutPaymentScreen(),
    const CheckoutBuyNowScreen(),
    const OrderSuccessOrFailScreen(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: customAppBar(
          context: context,
          appBarTitle: AppConstants.checkout,
          onPressed: () {
            if (stepperIndex < 0) {
              Navigator.of(context).pop();
              return;
            }
            pageController
                .previousPage(
                  duration: const Duration(
                    milliseconds: 800,
                  ),
                  curve: Curves.easeIn,
                )
                .then(
                  (value) => stepperIndex--,
                );
          },
        ),
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: SizedBox(
            height: AppConstants.getDeviceHeight(context: context) - 80,
            child: Column(
              children: [
                CheckoutStepper(stepperIndex: stepperIndex),
                Flexible(
                  flex: 8,
                  child: PageView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: pageController,
                    onPageChanged: (currentPage) {
                      setState(() {
                        stepperIndex = currentPage;
                        print('currentPage -------> $currentPage');
                        print('stepperCounter------> $stepperIndex');
                      });
                    },
                    itemCount: checkoutProcessScreens.length,
                    itemBuilder: (context, index) {
                      return checkoutProcessScreens[index];
                    },
                  ),
                ),
                (stepperIndex == checkoutProcessScreens.length - 2)
                    ? TotalPriceSheet(
                        pageController: pageController,
                      )
                    : Flexible(
                        flex: 1,
                        child: Container(
                          alignment: AlignmentDirectional.bottomCenter,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: (stepperIndex ==
                                  checkoutProcessScreens.length - 1)
                              ? customButton(
                                  onPressed: () {
                                    // TODO: Navigate To Home Page
                                  },
                                  buttonTitle: 'Continue',
                                  buttonTitleColor: ColorsManager.kWhiteW400,
                                )
                              : customButton(
                                  onPressed: () {
                                    setState(() {
                                      pageController.nextPage(
                                        duration: const Duration(
                                          milliseconds: 800,
                                        ),
                                        curve: Curves.easeIn,
                                      );
                                      print('object====== $stepperIndex');
                                    });
                                  },
                                  buttonTitle: 'Next',
                                  buttonTitleColor:
                                      ColorsManager.kAppBackgroundColor,
                                  buttonIcon: CustomIcons.forward,
                                ),
                        ),
                      ),
                (stepperIndex == checkoutProcessScreens.length - 2)
                    ? Container()
                    : SizeManager.s20.ph,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
