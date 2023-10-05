

import 'package:flutter/material.dart';

class CheckoutInfoScreen extends StatelessWidget {
  const CheckoutInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),

            ),
          ),
        ],
      ),
    );
  }
}
