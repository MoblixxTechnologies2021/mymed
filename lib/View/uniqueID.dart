import 'package:flutter/material.dart';
import 'package:mymed/View/widget.dart';

class UniqueID extends StatefulWidget {
  const UniqueID({Key? key}) : super(key: key);

  @override
  _UniqueIDState createState() => _UniqueIDState();
}

class _UniqueIDState extends State<UniqueID> {
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
        padding:
            const EdgeInsets.only(top: 100, left: 10, right: 10, bottom: 10),
        child: Column(
          children: [
            CircleAvatar(
                radius: 30.0, backgroundImage: AssetImage("assets/doctor.jpg")),
            SizedBox(
              height: 50,
            ),
            Names("ID", "Enter Your UniqueID"),
            SizedBox(
              height: 20,
            ),
            Text("Enter PIN"),
            Row(
              children: [
                Expanded(child: TextField()),
                SizedBox(
                  width: 10,
                ),
                Expanded(child: TextField()),
                SizedBox(
                  width: 10,
                ),
                Expanded(child: TextField()),
                SizedBox(
                  width: 10,
                ),
                Expanded(child: TextField()),
                SizedBox(
                  width: 10,
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.teal,
        onPressed: () {},
        icon: Icon(Icons.arrow_right_alt),
        label: Text("Next"),
      ),
    );
  }
}
