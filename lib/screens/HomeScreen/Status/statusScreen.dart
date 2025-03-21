import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/uihelper.dart';

class Statusscreen extends StatelessWidget {
  Statusscreen({super.key});

  var statusList = [
    {
      "userImage":
          "https://i.pinimg.com/736x/5a/6b/16/5a6b16956a2753892d9ee5714f6f112a.jpg",
      "name": "Somabrita Roy",
      "time": "Today, 05:42 PM",
      "hasUnviewed": true,
    },
    {
      "userImage":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrqpnDy8pZ4pvLsy815csuGCeLkPkCO4cFkH_eWu1sk5ZI-9P51Fh1teDAmgM_BdlR29A&usqp=CAU",
      "name": "Sucharita Saha",
      "time": "Today, 04:20 PM",
      "hasUnviewed": true,
    },
    {
      "userImage":
          "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      "name": "Rahul Sharma",
      "time": "Today, 02:15 PM",
      "hasUnviewed": true,
    },
    {
      "userImage":
          "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      "name": "Priya Patel",
      "time": "Today, 12:30 PM",
      "hasUnviewed": false,
    },
    {
      "userImage":
          "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHVzZXIlMjBwcm9maWxlfGVufDB8fDB8fHww&w=1000&q=80",
      "name": "Amit Kumar",
      "time": "Today, 11:20 AM",
      "hasUnviewed": false,
    },
    {
      "userImage":
          "https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHVzZXIlMjBwcm9maWxlfGVufDB8fDB8fHww&w=1000&q=80",
      "name": "Sneha Gupta",
      "time": "Yesterday, 10:45 PM",
      "hasUnviewed": false,
    },
    {
      "userImage":
          "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      "name": "Vijay Malhotra",
      "time": "Yesterday, 08:15 PM",
      "hasUnviewed": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // My Status Section
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Row(
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: const NetworkImage(
                        "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: CircleAvatar(
                          backgroundColor: const Color(0xff008665),
                          radius: 10,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Uihelper.customText(
                      text: "My status",
                      height: 15,
                      fontweight: FontWeight.bold,
                    ),
                    const SizedBox(height: 4),
                    Uihelper.customText(
                      text: "Tap to add status update",
                      height: 13,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Recent Updates Text
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Uihelper.customText(
              text: "Recent updates",
              height: 14,
              color: Colors.grey[700],
              fontweight: FontWeight.w500,
            ),
          ),

          // Status List
          Expanded(
            child: ListView.builder(
              itemCount: statusList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: statusList[index]["hasUnviewed"] == true
                              ? const Color(0xff008665)
                              : Colors.grey,
                          width: 2,
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                          statusList[index]["userImage"]?.toString() ?? "",
                        ),
                      ),
                    ),
                    title: Uihelper.customText(
                      text: statusList[index]["name"]?.toString() ?? "Unknown",
                      height: 15,
                      fontweight: FontWeight.bold,
                    ),
                    subtitle: Uihelper.customText(
                      text: statusList[index]["time"]?.toString() ?? "",
                      height: 13,
                      color: Colors.grey,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            mini: true,
            backgroundColor: Colors.grey[200],
            onPressed: () {},
            child: const Icon(
              Icons.edit,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            backgroundColor: const Color(0xff008665),
            onPressed: () {},
            child: const Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
