import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_clone/screens/HomeScreen/homescreen.dart';
import 'package:whatsapp_clone/widgets/uihelper.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();
  File? pickedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          Center(
            child: Uihelper.customText(
                text: "Profile Info",
                height: 20,
                color: const Color(0xff00A884),
                fontweight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Uihelper.customText(
              text: "Please provide your name and an optional", height: 16),
          const SizedBox(
            height: 5,
          ),
          Uihelper.customText(text: "profile photo", height: 16),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
              onTap: () => _openBottom(context),
              child: pickedImage == null
                  ? CircleAvatar(
                      radius: 80,
                      backgroundColor: const Color(0xffd9d9d9),
                      child: SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          'assets/images/camera_icon.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  : CircleAvatar(
                      radius: 80,
                      backgroundImage: FileImage(pickedImage!),
                    )),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 260,
                child: TextField(
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    hintText: 'Type your name here',
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF05AA82),
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF05AA82),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF05AA82),
                      ),
                    ),
                  ),
                ),
              ),
              const Icon(
                Icons.emoji_emotions_outlined,
                size: 35,
                color: Color(0xffd9d9d9),
              )
            ],
          ),
        ],
      ),
      floatingActionButton: Uihelper.customButton(
          callback: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Homescreen(),
              ),
            );
          },
          buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openBottom(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 120,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    _pickImage(ImageSource.camera);
                  },
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    size: 50,
                    color: Colors.grey,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    _pickImage(ImageSource.gallery);
                  },
                  icon: const Icon(
                    Icons.image,
                    size: 50,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          );
        });
  }

  _pickImage(ImageSource imagesource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesource);
      if (photo == null) return;
      final tempimage = File(photo.path);
      setState(() {
        pickedImage = tempimage;
      });
    } catch (e) {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.toString(),
          ),
        ),
      );
    }
  }
}
