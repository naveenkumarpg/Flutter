import 'package:flutter/material.dart';

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    @required this.label,
    @required this.padding,
    @required this.value,
    @required this.onChanged,
  });

  final String label;
  final EdgeInsets padding;
  final bool value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Expanded(child: Text(label)),
            Checkbox(
              value: value,
              onChanged: (bool ? newValue) {
                onChanged(newValue);
              },
            ),
          ],
        ),
      ),
    );
  }
}

bool _isSelected = false;

@override
Widget build(BuildContext context) {
  return LabeledCheckbox(
    label: 'This is the label text',
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    value: _isSelected,
    onChanged: (bool newValue) {
      setState(() {
        _isSelected = newValue;
      });
    },
  );
}
