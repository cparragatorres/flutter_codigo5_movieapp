
import 'package:flutter/material.dart';

class ItemReviewWidget extends StatelessWidget {
  const ItemReviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      textColor: Colors.white,
      iconColor: Colors.white,
      collapsedIconColor: Colors.white,
      childrenPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      title: Text(
        "Review 1",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      children: [
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          style: TextStyle(
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}
