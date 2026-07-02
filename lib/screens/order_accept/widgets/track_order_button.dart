import 'package:flutter/material.dart';
import 'package:groce_app/core/shared_widgets/shared_widgets/custom_button.dart';

class TrackOrderButton extends StatelessWidget {
  const TrackOrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CustomButton(title: "Track Order", onTap: () {}),
    );
  }
}
