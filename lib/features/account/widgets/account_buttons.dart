import 'package:flutter/material.dart';

class AccountButtons extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const AccountButtons({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 0.0,
          ),
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
        child: OutlinedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(0, 0, 0, 0.04),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              )),
          onPressed: onTap,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
