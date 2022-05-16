// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Adress.dart';
import 'package:flutter_application_1/Email.dart';

import 'package:flutter_application_1/Modifier_Nom.dart';
import 'package:flutter_application_1/common/them_helper.dart';
import 'package:flutter_application_1/profileImage.dart';
import 'Phone_Number.dart';

class Modifier_Profile extends StatefulWidget {
  const Modifier_Profile({Key? key}) : super(key: key);

  @override
  State<Modifier_Profile> createState() => _Modifier_ProfileState();
}

class _Modifier_ProfileState extends State<Modifier_Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.07,
        backgroundColor: Colors.blue,
        leading: BackButton(
          color: Colors.white,
        ),
        title: Text("Retour"),
        titleSpacing: -15,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  profileImage(),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            Modifier_Nom(),
            Adress(),
            Email(),
            Phone_Number(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              decoration: ThemHelper().buttonBoxDecoration(context),
              child: ElevatedButton(
                style: ThemHelper().buttonStyle(),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: Text(
                    "confirmer".toUpperCase(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
          ],
        ),
      ),
    );
  }
}
