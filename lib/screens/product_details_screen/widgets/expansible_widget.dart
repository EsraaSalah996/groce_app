import 'package:flutter/material.dart';

class ExpansibleWidget extends StatefulWidget {
  const ExpansibleWidget({super.key});

  @override
  State<ExpansibleWidget> createState() => _ExpansibleWidgetState();
}

class _ExpansibleWidgetState extends State<ExpansibleWidget> {
  bool showDescriptionText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                showDescriptionText = !showDescriptionText;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Product Detail",
                  style: TextStyle(
                    color: Color(0xff181725),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
          ),
          if (showDescriptionText)
            Text(
              "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
            ),
        ],
      ),
    );
  }
}
