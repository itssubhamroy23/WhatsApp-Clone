import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/HomeScreen/Calls/callsScreen.dart';
import 'package:whatsapp_clone/screens/HomeScreen/Chats/chatScreen.dart';
import 'package:whatsapp_clone/screens/HomeScreen/Status/statusScreen.dart';
import 'package:whatsapp_clone/screens/HomeScreen/camera/cameraScreen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
            indicatorColor: Colors.white,
          ),
          toolbarHeight: 50,
          automaticallyImplyLeading: false,
          title: const Text('WhatsApp'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/Search.png')),
            )
          ],
        ),
        body: TabBarView(
          children: [
            Camerascreen(),
            Chatscreen(),
            Statusscreen(),
            Callsscreen()
          ],
        ),
      ),
    );
  }
}
