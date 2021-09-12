import 'package:flutter/material.dart';


// Widget Names(
//   label,
//   hint,
// ) {
//   return TextField(
//     decoration: InputDecoration(
      
//       border: OutlineInputBorder(),
//       labelText: label,
//       hintText: hint,
//     ),
//   );
// }

class DateTimePicker extends StatefulWidget {
final int startTime , endTime;
final String labeltxt,hinttxt;


  DateTimePicker(this.startTime, this.endTime, this.labeltxt,this.hinttxt, ) ;


  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DateTimePicker> {
  final dateController = TextEditingController();
  //final appointmentController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateController.dispose();
    //appointmentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: dateController,
      readOnly: true,
      decoration: InputDecoration(
          suffixIcon: Icon(Icons.arrow_drop_down),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          labelText: widget.labeltxt,
          hintText: widget.hinttxt),
      onTap: () async {
        var date = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(widget.startTime),
            lastDate: DateTime(widget.endTime));
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
