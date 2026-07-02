import 'package:flutter/material.dart';
import 'package:groce_app/screens/order_accept/screens/order_accepted_screen.dart';

class PlaceOrderButton extends StatelessWidget {
  const PlaceOrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 58,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff53B175),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OrderAcceptedScreen()),
          );
        },
        child: const Text(
          "Place Order",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
