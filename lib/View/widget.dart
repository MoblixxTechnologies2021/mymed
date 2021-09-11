import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget Names(
  label,
  hint,
) {
  return TextField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: label,
      hintText: hint,
    ),
  );
}

class DatePicker extends StatefulWidget {
  DatePicker();

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final dateController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      controller: dateController,
      decoration: InputDecoration(
          suffixIcon: Icon(Icons.arrow_drop_down),
          border: OutlineInputBorder(),
          labelText: "Date of Birth",
          hintText: 'Pick your Date'),
      onTap: () async {
        var date = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime(2100));
        dateController.text = date.toString().substring(0, 10);
      },
    );
  }
}

Widget Numbers(number) {
  return TextField(
    decoration:
        new InputDecoration(border: OutlineInputBorder(), labelText: number),
    keyboardType: TextInputType.number,
  );
}
