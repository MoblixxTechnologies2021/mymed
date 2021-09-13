import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mymed/View/common/theme_helper.dart';

class Name extends StatelessWidget {
  final String label;
  final String hint;
  const Name(
      {Key? key,
      required this.myFirstNameController,
      required this.hint,
      required this.label})
      : super(key: key);

  final TextEditingController myFirstNameController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myFirstNameController,
      decoration: ThemeHelper().textInputDecoration(hint, label),
    );
  }
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
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          labelText: "Date of Birth",
          hintText: 'Pick your Date'),
      onTap: () async {
        var date = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime(2300));
        dateController.text = date.toString().substring(0, 10);
      },
    );
  }
}

// Widget Numbers(number) {
//   return TextField(
//     decoration:
//         new InputDecoration(border: OutlineInputBorder(), labelText: number),
//     keyboardType: TextInputType.number,
//   );
// }
/// Flutter code sample for DropdownButton

// This sample shows a `DropdownButton` with a large arrow icon,
// purple text style, and bold purple underline, whose value is one of "One",
// "Two", "Free", or "Four".
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/material/dropdown_button.png)

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'Male';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(
        Icons.radio_button_checked,
        color: Colors.black54,
      ),
      iconSize: 20,
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        height: 1,
        //color: Colors.black45,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>[
        'Female',
        'Male',
        'Other',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
