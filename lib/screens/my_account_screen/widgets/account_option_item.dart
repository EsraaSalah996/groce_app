import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groce_app/core/model/account_option_model.dart';

class AccountOptionItem extends StatelessWidget {
  final AccountOptionModel option;

  const AccountOptionItem({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        child: Row(
          children: [
            Container(
              width: 30,
              alignment: Alignment.center,
              child: SvgPicture.asset(option.icon, width: 24, height: 24),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                option.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF181725),
                ),
              ),
            ),
            const Icon(Icons.chevron_right, size: 24, color: Color(0xFF181725)),
          ],
        ),
      ),
    );
  }
}
