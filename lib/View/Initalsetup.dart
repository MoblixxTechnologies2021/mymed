// import 'package:flutter/material.dart';
// import 'package:mymed/View/widget.dart';

// class GeneralInformation extends StatefulWidget {
//   const GeneralInformation({Key? key}) : super(key: key);

//   @override
//   _GeneralInformationState createState() => _GeneralInformationState();
// }

// class _GeneralInformationState extends State<GeneralInformation> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         title: Center(
//           child: Text(
//             "General Information",
//             style: TextStyle(fontSize: 20, color: Colors.white),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Names("First Name", "Enter Your Name"),
//               SizedBox(
//                 height: 5,
//               ),
//               Names("Last Name", "Enter Your Name"),
//               SizedBox(
//                 height: 5,
//               ),
//               Row(children: [
//                 Expanded(child: Names("Gender", "Enter Your Gender")),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Expanded(child: DatePicker()),
//               ]),
//               SizedBox(
//                 height: 10,
//               ),
//               Numbers("Enter Your Number"),
//               SizedBox(
//                 height: 10,
//               ),
//               Names("Address", "Enter Your Address"),
//               SizedBox(
//                 height: 10,
//               ),
//               Names("Doctor Name", "Enter Your DoctorName"),
//               SizedBox(
//                 height: 10,
//               ),
//               Numbers("Enter Your DoctorNumber"),
//               SizedBox(
//                 height: 10,
//               ),
//               Names("Pharmacy Name", "Enter Your PharmacyName"),
//               SizedBox(
//                 height: 10,
//               ),
//               Numbers("Enter Your PharmacyNumber"),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         backgroundColor: Colors.teal,
//         onPressed: () {},
//         icon: Icon(Icons.save),
//         label: Text("Save"),
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mymed/View/common/HeaderWidget.dart';
import 'package:mymed/View/common/theme_helper.dart';
import 'package:mymed/View/homescreen.dart';
import 'package:mymed/View/widget.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegistrationPageState();
  }
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;

  final myFirstNameController = TextEditingController();
  final myLastNameController = TextEditingController();
  final myAddressController = TextEditingController();

  final myMobileController = TextEditingController();
  final myDoctorController = TextEditingController();
  final myDoctorNumberController = TextEditingController();
  final myPharmacyController = TextEditingController();
  final myPharmacyNumberController = TextEditingController();
  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    myFirstNameController.addListener;
    myLastNameController.addListener;
    myAddressController.addListener;

    myMobileController.addListener;
    myDoctorController.addListener;
    myDoctorNumberController.addListener;
    myPharmacyController.addListener;
    myPharmacyNumberController.addListener;
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myFirstNameController.dispose();
    myLastNameController.dispose();
    myAddressController.dispose();

    myMobileController.dispose();
    myDoctorController.dispose();
    myDoctorNumberController.dispose();
    myPharmacyController.dispose();
    myPharmacyNumberController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 150,
                child: HeaderWidget(150, false, Icons.person_add_alt_1_rounded),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 50, 25, 10),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          // Stack(
                          //   children: [],
                          // ),
                          SizedBox(
                            height: 120,
                          ),
                          Container(
                            child: Name(
                              myFirstNameController: myFirstNameController,
                              hint: 'First Name',
                              label: 'Enter Your First Name',
                            ),
                            decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                              child: Name(
                                  myFirstNameController: myLastNameController,
                                  hint: "Last Name",
                                  label: "Enter Your Last Name")),
                          SizedBox(height: 20.0),
                          Container(
                              child: Name(
                                  myFirstNameController: myAddressController,
                                  hint: "Address",
                                  label: "Enter Your Address")),
                          SizedBox(height: 20.0),
                          Row(
                              //  mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(child: DatePicker()),
                                SizedBox(
                                  width: 50,
                                ),
                                Expanded(
                                  child: MyStatefulWidget(),
                                ),
                              ]),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: TextFormField(
                              controller: myMobileController,
                              decoration: ThemeHelper().textInputDecoration(
                                  "Mobile Number", "Enter Your Mobile Number"),
                              keyboardType: TextInputType.phone,
                              validator: (val) {
                                if (!(val!.isEmpty) &&
                                    !RegExp(r"^(\d+)*$").hasMatch(val)) {
                                  return "Enter a valid phone number";
                                }
                                return null;
                              },
                            ),
                            decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                              child: Name(
                                  myFirstNameController: myDoctorController,
                                  hint: "Current Primary Care Doctor Name",
                                  label: 'Enter Your Doctor Name')),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: TextFormField(
                              controller: myDoctorNumberController,
                              decoration: ThemeHelper().textInputDecoration(
                                  "Doctor Mobile Number",
                                  "Enter Your Doctor Mobile Number"),
                              keyboardType: TextInputType.phone,
                              validator: (val) {
                                if (!(val!.isEmpty) &&
                                    !RegExp(r"^(\d+)*$").hasMatch(val)) {
                                  return "Enter a valid phone number";
                                }
                                return null;
                              },
                            ),
                            decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                              child: Name(
                                  myFirstNameController: myPharmacyController,
                                  hint: "Current Pharmacy Name ",
                                  label: "Enter Your Phamracy Name")),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: TextFormField(
                              controller: myPharmacyNumberController,
                              decoration: ThemeHelper().textInputDecoration(
                                  " Pharmacy Mobile Number",
                                  "Enter Your Pharmacy Mobile Number"),
                              keyboardType: TextInputType.phone,
                              validator: (val) {
                                if (!(val!.isEmpty) &&
                                    !RegExp(r"^(\d+)*$").hasMatch(val)) {
                                  return "Enter a valid phone number";
                                }
                                return null;
                              },
                            ),
                            decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(height: 15.0),
                          FormField<bool>(
                            builder: (state) {
                              return Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                          value: checkboxValue,
                                          onChanged: (value) {
                                            setState(() {
                                              checkboxValue = value!;
                                              state.didChange(value);
                                            });
                                          }),
                                      Text(
                                        "I accept all terms and conditions.",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      state.errorText ?? '',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Theme.of(context).errorColor,
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                ],
                              );
                            },
                            validator: (value) {
                              if (!checkboxValue) {
                                return 'You need to accept terms and conditions';
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            decoration:
                                ThemeHelper().buttonBoxDecoration(context),
                            child: ElevatedButton(
                              style: ThemeHelper().buttonStyle(),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(40, 10, 40, 10),
                                child: Text(
                                  "Register".toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Get.to(HomeScreen());
                                // if (_formKey.currentState!.validate()) {
                                //   Navigator.of(context).pushAndRemoveUntil(
                                //       MaterialPageRoute(
                                //           builder: (context) => ProfilePage()
                                //       ),
                                //           (Route<dynamic> route) => false
                                //   );
                                // }
                              },
                            ),
                          ),
                          SizedBox(height: 30.0),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class Name extends StatelessWidget {
//   final String label;
//   final String hint;
//   const Name(
//       {Key? key,
//       required this.myFirstNameController,
//       required this.hint,
//       required this.label})
//       : super(key: key);

//   final TextEditingController myFirstNameController;

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: myFirstNameController,
//       decoration: ThemeHelper().textInputDecoration(hint, label),
//     );
//   }
// }
