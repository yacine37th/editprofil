import 'package:flutter/material.dart';
import 'package:flutter_application_1/Modifier_Profile.dart';




import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:Modifier_Profile() ,
    );
  } 
}
