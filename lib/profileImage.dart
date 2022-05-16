import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/them_helper.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class profileImage extends StatefulWidget {
  const profileImage({Key? key}) : super(key: key);

  @override
  State<profileImage> createState() => _profileImageState();
}

class _profileImageState extends State<profileImage> {
  /////////////////////////////////////
  File? pickedImage;

  void imagePickerOption() {
    Get.bottomSheet(
      SingleChildScrollView(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          child: Container(
            color: Colors.white,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Choissir Une Image ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      pickImage(ImageSource.camera);
                    },
                    icon: const Icon(Icons.camera),
                    label: const Text("CAMERA"),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      pickImage(ImageSource.gallery);
                    },
                    icon: const Icon(Icons.image),
                    label: const Text("GALLERY"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.close),
                    label: const Text("CANCEL"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  pickImage(ImageSource imageType) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageType);
      if (photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
        pickedImage = tempImage;
      });

      Get.back();
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  //////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.center,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromRGBO(56, 124, 240, 100), width: 5),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                  child: ClipOval(
                    child: pickedImage != null
                        ? Image.file(
                            pickedImage!,
                            width: MediaQuery.of(context).size.width * 0.35,
                            height: MediaQuery.of(context).size.height * 0.2,
                            fit: BoxFit.cover,
                          )
                        : Image.asset(
                            'assets/images/doc.png',
                            width: MediaQuery.of(context).size.width * 0.35,
                            height: MediaQuery.of(context).size.height * 0.2,
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
               /* Positioned(
                  bottom: 0,
                  right: 5,
                  child: IconButton(
                    onPressed: imagePickerOption,
                    icon: const Icon(
                      Icons.add_a_photo_outlined,
                      color: Color.fromARGB(255, 17, 23, 116),
                      size: 30,
                    ),
                  ),
                )*/
              ],
            ),
          ),
         /* const SizedBox(
            height: 20,
          ),*/
           /*Container(   
                          decoration: ThemHelper().buttonBoxDecoration(context),
                          child: ElevatedButton(  
                            style: ThemHelper().buttonStyle(),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(40, 10, 40, 10),
                              child: Row(
                                children: [
                                  Icon(Icons.add_a_photo_sharp,size: 18,),
                                  Text(
                                    "Modifier IMAGE".toUpperCase(),
                                    style: TextStyle(),
                                  ),
                                ],
                              ),
                              
                            ),
                            onPressed: imagePickerOption,
                          ),
                        ),*/
          Padding(
            padding: const  EdgeInsets.fromLTRB(40, 10, 40, 10),
            child: ElevatedButton.icon(
                onPressed: imagePickerOption,
                icon: Icon(Icons.add_a_photo_sharp,size: 18,),
                label:  Text('Modifier IMAGE'.toUpperCase())),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
        ],
      
      );
    
  }
}
