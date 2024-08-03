import 'package:flutter/material.dart';

class ItemDeportWidget extends StatelessWidget {
  String deportName;
  ItemDeportWidget({required this.deportName});

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
        deportName,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
