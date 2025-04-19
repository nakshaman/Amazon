import 'package:amazon/features/account/widgets/account_buttons.dart';
import 'package:flutter/material.dart';

class TopButtons extends StatefulWidget {
  const TopButtons({super.key});
  @override
  State<TopButtons> createState() => _TopButtonsState();
}

class _TopButtonsState extends State<TopButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AccountButtons(
              text: 'Your Orders',
              onTap: () {},
            ),
            AccountButtons(
              text: 'Turn Seller',
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            AccountButtons(
              text: 'Logout',
              onTap: () {},
            ),
            AccountButtons(
              text: 'Your Wishlist',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
