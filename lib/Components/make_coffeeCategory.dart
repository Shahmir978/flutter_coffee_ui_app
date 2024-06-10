import 'package:flutter/material.dart';

// ignore: must_be_immutable
class make_coffeeCategory extends StatefulWidget {
  final String categoryName;
   bool isSelected;
  

  make_coffeeCategory({super.key, required this.categoryName,required this.isSelected});

  @override
  State<make_coffeeCategory> createState() => _make_coffeeCategoryState();
}

class _make_coffeeCategoryState extends State<make_coffeeCategory> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Text(
            widget.categoryName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: widget.isSelected ? Color(0xffd17842) : Color(0xff52555a),
            ),
          ),
          widget.isSelected
              ? Text(
                  "⬤",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xffd17842),
                  ),
                )
              : Text(""),
        ],
      ),
    );
  }
}
