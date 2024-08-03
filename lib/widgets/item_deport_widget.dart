import 'package:flutter/material.dart';
import 'package:statefullappg9/models/deport_model.dart';

class ItemDeportWidget extends StatelessWidget {
  DeportModel deporte;
  ItemDeportWidget({required this.deporte});

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
        deporte.name,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
