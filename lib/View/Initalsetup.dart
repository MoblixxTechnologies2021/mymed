import 'package:flutter/material.dart';
import 'package:mymed/View/widget.dart';

class GeneralInformation extends StatefulWidget {
  const GeneralInformation({Key? key}) : super(key: key);

  @override
  _GeneralInformationState createState() => _GeneralInformationState();
}

class _GeneralInformationState extends State<GeneralInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text(
            "General Information",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Names("First Name", "Enter Your Name"),
              SizedBox(
                height: 5,
              ),
              Names("Last Name", "Enter Your Name"),
              SizedBox(
                height: 5,
              ),
              Row(children: [
                Expanded(child: Names("Gender", "Enter Your Gender")),
                SizedBox(
                  width: 10,
                ),
                Expanded(child: DatePicker()),
              ]),
              SizedBox(
                height: 10,
              ),
              Numbers("Enter Your Number"),
              SizedBox(
                height: 10,
              ),
              Names("Address", "Enter Your Address"),
              SizedBox(
                height: 10,
              ),
              Names("Doctor Name", "Enter Your DoctorName"),
              SizedBox(
                height: 10,
              ),
              Numbers("Enter Your DoctorNumber"),
              SizedBox(
                height: 10,
              ),
              Names("Pharmacy Name", "Enter Your PharmacyName"),
              SizedBox(
                height: 10,
              ),
              Numbers("Enter Your PharmacyNumber"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.teal,
        onPressed: () {},
        icon: Icon(Icons.save),
        label: Text("Save"),
      ),
    );
  }
}
