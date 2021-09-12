import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mymed/View/common/datePicker.dart';
import 'package:mymed/View/common/HeaderWidget.dart';
import 'package:mymed/View/common/theme_helper.dart';


class AddSlipPage extends  StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return _AddSlipPage();
  }
}

class _AddSlipPage extends State<AddSlipPage>{

  final _formKey = GlobalKey<FormState>();
  String dropdownValue = '1';
  bool checkedValue = false;
  bool checkboxValue = false;
  
  final medicineController = TextEditingController();
  final strengthController = TextEditingController();
  final pharmacynameController = TextEditingController();
  final pharmacynumberController = TextEditingController();
  final directionsController = TextEditingController();
  final doctornameController = TextEditingController();
  final doctornumberController = TextEditingController();
  final dateofappointmentController = TextEditingController();
  final diseaseController = TextEditingController();
  
  @override 
  void initState(){
    super.initState();  
     // Start listening to changes.
      
  }

  @override  
  void dispose(){
    medicineController.dispose();
    strengthController.dispose();
    pharmacynameController.dispose();
    pharmacynumberController.dispose();
    doctornameController.dispose();
    doctornumberController.dispose();
    dateofappointmentController.dispose();
    diseaseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
                        GestureDetector(
                          child: Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      width: 5, color: Colors.white),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 20,
                                      offset: const Offset(5, 5),
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.person,
                                  color: Colors.grey.shade300,
                                  size: 80.0,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(80, 80, 0, 0),
                                child: Icon(
                                  Icons.add_circle,
                                  color: Colors.grey.shade700,
                                  size: 25.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        //Date of Birth
                        DateTimePicker(1900, 2021,"Date of Birth","Pick your date"),
                        SizedBox(height: 15,),
                        Container(
                          child: TextFormField(
                            controller: medicineController,
                            decoration: ThemeHelper().textInputDecoration('Medicine', 'Enter your medicine name'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 15,),
                        Container(
                          child: TextFormField(
                            controller: strengthController,
                            decoration: ThemeHelper().textInputDecoration('Strength', 'Strength'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 15.0,),
                        Container(
                          
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey,),
                              borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left:12.0,right: 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Select your Quantity',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),),

                                DropdownButton<String>(
                                  value: dropdownValue,
                                  icon: const Icon(Icons.arrow_downward),
                                  iconSize: 24,
                                  elevation: 16,
                                  style: const TextStyle(color: Colors.deepPurple),
                                  underline: Container(
                                    height: 2,
                                    color: Colors.deepPurpleAccent,
                                  ),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue = newValue!;
                                    });
                                  },
                                  items: <String>['1', '2', '3', '4']
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                            ],),
                          )
                        ),
                        SizedBox(height: 15,),
                        Container(
                          child: TextFormField(
                            controller: pharmacynameController,
                            decoration: ThemeHelper().textInputDecoration('Pharmacy Name', 'Enter pharmacy name'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 15.0),
                        Container(
                          child: TextFormField(
                            controller: pharmacynumberController,
                            decoration: ThemeHelper().textInputDecoration(
                                "Pharmacy Number",
                                "Enter pharmacy phone number"),
                            keyboardType: TextInputType.phone,
                            validator: (val) {
                              if(!(val!.isEmpty) && !RegExp(r"^(\d+)*$").hasMatch(val)){
                                return "Enter a valid phone number";
                              }
                              return null;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 15,),
                        Container(
                          child: TextFormField(
                            controller: directionsController,
                            decoration: ThemeHelper().textInputDecoration('Directions', 'Enter Directions'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 15,),
                        Container(
                          child: TextFormField(
                            controller: doctornameController,
                            decoration: ThemeHelper().textInputDecoration('Doctor Name', 'Enter doctor name'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 15.0),
                        Container(
                          child: TextFormField(
                            controller: doctornumberController,
                            decoration: ThemeHelper().textInputDecoration(
                                "Doctor Mobile Number",
                                "Enter doctor number"),
                            keyboardType: TextInputType.phone,
                            validator: (val) {
                              if(!(val!.isEmpty) && !RegExp(r"^(\d+)*$").hasMatch(val)){
                                return "Enter a valid phone number";
                              }
                              return null;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 15.0),
                        DateTimePicker(
                          2021, 2023,"Appointment Date","Select your appointment"),
                        // DateTimePicker(2100, 2300,"Appointment Date","Select Appointment Date"),
                        SizedBox(height: 15.0),
                        Container(
                          child: TextFormField(
                            controller: diseaseController,
                            decoration: ThemeHelper().textInputDecoration("Disease / Reason", "Enter disease / reason"),
                            keyboardType: TextInputType.emailAddress,
                            validator: (val) {
                              if(!(val!.isEmpty) && !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$").hasMatch(val)){
                                return "Enter a disease / reason";
                              }
                              return null;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
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
                                    Text("I accept all terms and conditions.", style: TextStyle(color: Colors.grey),),
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    state.errorText ?? '',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: Theme.of(context).errorColor,fontSize: 12,),
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
                        SizedBox(height: 10.0),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             Container(
                            decoration: ThemeHelper().buttonBoxDecoration(context),
                            child: ElevatedButton(
                              style: ThemeHelper().buttonStyle(),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                child: Text(
                                  "Save".toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              onPressed: () {
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
                          SizedBox(width: 10.0,),
                           Container(
                            decoration: ThemeHelper().buttonBoxDecoration(context),
                            child: ElevatedButton(
                              style: ThemeHelper().buttonStyle(),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                child: Text(
                                  "Cancel".toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              onPressed: () {
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
                          )
                          ],),
                        ),
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }



}