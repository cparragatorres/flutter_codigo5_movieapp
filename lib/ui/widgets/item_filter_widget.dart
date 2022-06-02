import 'package:flutter/material.dart';

class ItemFilterWidget extends StatelessWidget {
  String textFilter;
  ItemFilterWidget({
    required this.textFilter,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12.0),
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Colors.white70,
        ),
      ),
      child: Text(
        textFilter,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
