import 'package:flutter/material.dart';

class CheckoutItem extends StatelessWidget {
  final String title;
  final String? value;
  final Widget? trailing;

  const CheckoutItem({
    super.key,
    required this.title,
    this.value,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              trailing ??
                  Text(
                    value ?? "",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
              const SizedBox(width: 8),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
        const Divider(height: 1),
      ],
    );
  }
}
