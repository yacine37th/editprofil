import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/them_helper.dart';

class Email extends StatefulWidget {
  const Email({Key? key}) : super(key: key);

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
    final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: ThemHelper().textInputDecoration('Modifier adresse email'.toUpperCase(),
              'Entrer une adresse email'),
      /* TextFormField(      
        keyboardType: TextInputType.emailAddress,
        validator: (val) {
                if (!(val!.isEmpty) &&
              !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
              .hasMatch(val)) {
              return "Entrer une adress valid ";
              }
              return null;
          },
        decoration: InputDecoration(
           prefixIcon: Icon(Icons.email),
            contentPadding: EdgeInsets.only(bottom: 5),
            labelText: "Modifier adress email".toUpperCase(),
            hintText: "@example.com ",
            
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),*/
    ));
  }
}
