import 'package:flutter/material.dart';

class ReactionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  const ReactionButton({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Icon(icon, color: const Color(0xff37425E)),
          const SizedBox(width: 5),
          Text(text),
        ],
      ),
    );
  }
}
