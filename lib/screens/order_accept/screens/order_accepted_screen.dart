import 'package:flutter/material.dart';
import 'package:groce_app/screens/order_accept/widgets/back_to_home_button.dart';
import 'package:groce_app/screens/order_accept/widgets/order_success_image.dart';
import 'package:groce_app/screens/order_accept/widgets/order_success_text.dart';
import 'package:groce_app/screens/order_accept/widgets/track_order_button.dart';

class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Spacer(),

              OrderSuccessImage(),

              SizedBox(height: 60),

              OrderSuccessText(),

              Spacer(),

              TrackOrderButton(),

              SizedBox(height: 20),

              BackToHomeButton(),

              SizedBox(height: 35),
            ],
          ),
        ),
      ),
    );
  }
}
