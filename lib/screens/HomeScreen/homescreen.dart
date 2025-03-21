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
      initialIndex: 1, // Start on the CHATS tab
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff008665),
          elevation: 0,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(48),
            child: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              isScrollable: true,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              tabs: [
                SizedBox(
                  width: 24,
                  child: Tab(
                    icon: Icon(Icons.camera_alt),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 48,
                  child: Center(
                    child: Text("CHATS"),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 48,
                  child: Center(
                    child: Text("STATUS"),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 48,
                  child: Center(
                    child: Text("CALLS"),
                  ),
                ),
              ],
            ),
          ),
          toolbarHeight: 56,
          automaticallyImplyLeading: false,
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.white),
              tooltip: 'Search',
            ),
            PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert, color: Colors.white),
              onSelected: (value) {
                // Handle menu item selection
              },
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem(
                    value: 'newGroup',
                    child: Text('New group'),
                  ),
                  const PopupMenuItem(
                    value: 'newBroadcast',
                    child: Text('New broadcast'),
                  ),
                  const PopupMenuItem(
                    value: 'linkedDevices',
                    child: Text('Linked devices'),
                  ),
                  const PopupMenuItem(
                    value: 'starredMessages',
                    child: Text('Starred messages'),
                  ),
                  const PopupMenuItem(
                    value: 'settings',
                    child: Text('Settings'),
                  ),
                ];
              },
            ),
          ],
        ),
        body: TabBarView(
          children: [
            const Camerascreen(),
            Chatscreen(),
            Statusscreen(),
            Callscreen()
          ],
        ),
      ),
    );
  }
}
