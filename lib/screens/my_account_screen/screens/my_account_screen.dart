import 'package:flutter/material.dart';
import 'package:groce_app/core/model/account_option_model.dart';
import 'package:groce_app/screens/my_account_screen/widgets/vertical_account_options.dart';

class MyAccountScreen extends StatelessWidget {
  MyAccountScreen({super.key});

  final List<AccountOptionModel> options = [
    const AccountOptionModel(
      icon: "assets/icons/Orders icon.svg",
      title: 'Orders',
    ),
    const AccountOptionModel(
      icon: "assets/icons/My Details icon.svg",
      title: 'My Details',
    ),
    const AccountOptionModel(
      icon: "assets/icons/Delicery address.svg",
      title: 'Delivery Address',
    ),
    const AccountOptionModel(
      icon: "assets/icons/Vector icon.svg",
      title: 'Payment Methods',
    ),
    const AccountOptionModel(
      icon: "assets/icons/Promo Cord icon.svg",
      title: 'Promo Code',
    ),
    const AccountOptionModel(
      icon: "assets/icons/Bell icon.svg",
      title: 'Notifications',
    ),
    const AccountOptionModel(icon: "assets/icons/help icon.svg", title: 'Help'),
    const AccountOptionModel(
      icon: "assets/icons/about icon.svg",
      title: 'About',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
                top: 30,
                bottom: 30,
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(27),
                    child: Image.asset(
                      'assets/images/_ (16).jpeg',
                      width: 65,
                      height: 65,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        width: 65,
                        height: 65,
                        color: Colors.grey.shade300,
                        child: const Icon(Icons.person, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Esraa Salah",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF181725),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Icon(
                              Icons.edit,
                              color: Color(0xFF53B175),
                              size: 18,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "esraashatla@gmail.com",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF7C7C7C),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: Color(0xFFE2E2E2), thickness: 1, height: 1),
            Expanded(child: VerticalAccountOptions(options: options)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(19),
                child: Container(
                  height: 67,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2F3F2),
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 25,
                        top: 0,
                        bottom: 0,
                        child: Icon(Icons.logout, color: Color(0xFF53B175)),
                      ),
                      const Center(
                        child: Text(
                          "Log Out",
                          style: TextStyle(
                            color: Color(0xFF53B175),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
