import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'common/them_helper.dart';

class Adress extends StatefulWidget {
  const Adress({Key? key}) : super(key: key);

  @override
  State<Adress> createState() => _AdressState();
}

class _AdressState extends State<Adress> {
  final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(15),
        child: TextFormField(
          decoration: ThemHelper().textInputDecoration('Modifier adresse'.toUpperCase(),
              'Entrer une adresse '), /*TextFormField(      
        decoration: InputDecoration(
           prefixIcon: Icon(Icons.place),
            contentPadding: EdgeInsets.only(bottom: 5),
            labelText: "Modifier adress".toUpperCase(),
            hintText: "Oran ",
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),*/
        ));
  }
}
