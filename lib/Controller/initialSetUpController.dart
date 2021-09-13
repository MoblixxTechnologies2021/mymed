import 'package:cloud_firestore/cloud_firestore.dart';

class InitialSetUpController {
  void addAllDetails(id, firstname, lastname, address, date, mobile, doctorName,
      doctorNumber, pharmacyName, pharmacyNumber, gender) {
    Map<String, dynamic> userData = {
      "UniqueId": id,
      "Firstname": "${firstname}",
      "Lastname": "${lastname}",
      "Address": "${address}",
      "Date Of Birth": "${date}",
      "Gender": "${gender}",
      "Mobile Number": "${mobile}",
      "Doctor Name": "${doctorName}",
      "Doctor Mobile Number": "${doctorNumber}",
      "Phamracy Name": "${pharmacyName}",
      "Pharmacy Mobile Number": "${pharmacyNumber}",
    };

    CollectionReference collectionReference =
        FirebaseFirestore.instance.collection("UserPersonalData");
    collectionReference.add(userData);
  }
}
