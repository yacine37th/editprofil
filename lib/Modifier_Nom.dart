import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/them_helper.dart';

class Modifier_Nom extends StatefulWidget {
  const Modifier_Nom({Key? key}) : super(key: key);

  @override
  State<Modifier_Nom> createState() => _Modifier_NomState();
}

class _Modifier_NomState extends State<Modifier_Nom> {
    final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child:TextFormField(
          decoration: ThemHelper().textInputDecoration('Modifier nom'.toUpperCase(),
              'Entrer Votre Nom '),
      /* TextFormField(      
        decoration: InputDecoration(
           prefixIcon: Icon(Icons.person),
            contentPadding: EdgeInsets.only(bottom: 5),
            labelText: "Modifier NOM".toUpperCase(),
            hintText: "Dr.-----------",
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),*/
    ));
  }
}
