import 'package:flutter/material.dart';
import 'package:groce_app/core/model/account_option_model.dart';
import 'package:groce_app/screens/my_account_screen/widgets/account_option_item.dart';

class VerticalAccountOptions extends StatelessWidget {
  final List<AccountOptionModel> options;

  const VerticalAccountOptions({super.key, required this.options});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: options.length,
      itemBuilder: (context, index) {
        return AccountOptionItem(option: options[index]);
      },
      separatorBuilder: (context, index) {
        return const Divider(color: Color(0xFFE2E2E2), thickness: 1, height: 1);
      },
    );
  }
}
