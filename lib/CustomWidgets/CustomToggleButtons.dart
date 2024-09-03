import 'package:flutter/material.dart';
class CustomToggleButtons extends StatefulWidget {
  final bool value;
  final  onChanged;
  const CustomToggleButtons({super.key,
    required this.value,
    required this.onChanged,
  }) ;
  @override
  _CustomToggleButtonsState createState() => _CustomToggleButtonsState();
}
class _CustomToggleButtonsState extends State<CustomToggleButtons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Switch(
        value: widget.value,
        onChanged: (bool val) {
          setState(() {
            widget.onChanged(val);
          });
        },
      ),
    );
  }
}
