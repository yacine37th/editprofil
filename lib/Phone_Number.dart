import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/common/them_helper.dart';

class Phone_Number extends StatefulWidget {
  const Phone_Number({Key? key}) : super(key: key);

  @override
  State<Phone_Number> createState() => _Phone_NumberState();
}

class _Phone_NumberState extends State<Phone_Number> {
    final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: TextFormField(
          decoration: ThemHelper().textInputDecoration('Modifier Numero telephone'.toUpperCase(),
              'Entrer Un Numero '),
      /*TextFormField(      
        keyboardType: TextInputType.phone, 
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: InputDecoration(
             prefixIcon: Icon(Icons.phone),
             prefixText: '+213 ',
            contentPadding: EdgeInsets.only(bottom: 5),
            labelText: "Modifier numero telephone".toUpperCase(),
          //  hintText: "+213... ",
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),*/
    ));
  }
}