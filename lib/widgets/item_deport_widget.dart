import 'package:flutter/material.dart';

class ItemDeportWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        // color: Colors.red,
        border: Border.all(color: Colors.orange, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "Gimnasio",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
