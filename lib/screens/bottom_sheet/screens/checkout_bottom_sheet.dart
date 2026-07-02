import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groce_app/screens/bottom_sheet/widgets/checkout_header.dart';
import 'package:groce_app/screens/bottom_sheet/widgets/checkout_item.dart';
import 'package:groce_app/screens/bottom_sheet/widgets/checkout_terms.dart';
import 'package:groce_app/screens/bottom_sheet/widgets/place_order_button.dart';

class CheckoutBottomSheet extends StatelessWidget {
  const CheckoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CheckoutHeader(),

            SizedBox(height: 12),

            Divider(),

            CheckoutItem(title: "Delivery", value: "Select Method"),

            CheckoutItem(
              title: "Payment",
              trailing: SvgPicture.asset(
                "assets/icons/card.svg",
                width: 24,
                height: 24,
              ),
            ),

            CheckoutItem(title: "Promo Code", value: "Pick discount"),

            CheckoutItem(title: "Total Cost", value: "\$13.97"),

            SizedBox(height: 20),

            CheckoutTerms(),

            SizedBox(height: 25),

            PlaceOrderButton(),
          ],
        ),
      ),
    );
  }
}
