import 'package:flutter/material.dart';
import 'package:statefullappg9/models/deport_model.dart';

class ItemDeportWidget extends StatefulWidget {
  DeportModel deporte;
  VoidCallback onTap;
  ItemDeportWidget({
    required this.deporte,
    required this.onTap,
  });

  @override
  State<ItemDeportWidget> createState() => _ItemDeportWidgetState();
}

class _ItemDeportWidgetState extends State<ItemDeportWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,

      // () {
      // widget.deporte.isFavorite = !widget.deporte.isFavorite;
      // setState(() {});
      // },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color:
              widget.deporte.isFavorite == true ? Colors.orange : Colors.white,
          border: Border.all(color: Colors.orange, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          widget.deporte.name,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
