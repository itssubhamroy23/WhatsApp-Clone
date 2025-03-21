import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/uihelper.dart';

class Callscreen extends StatelessWidget {
  Callscreen({super.key});

  var callsList = [
    {
      "userImage":
          "https://i.pinimg.com/736x/5a/6b/16/5a6b16956a2753892d9ee5714f6f112a.jpg",
      "name": "Somabrita Roy",
      "time": "Today, 06:42 PM",
      "isVideo": true,
      "isMissed": false,
      "isIncoming": true,
    },
    {
      "userImage":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrqpnDy8pZ4pvLsy815csuGCeLkPkCO4cFkH_eWu1sk5ZI-9P51Fh1teDAmgM_BdlR29A&usqp=CAU",
      "name": "Sucharita Saha",
      "time": "Today, 05:10 PM",
      "isVideo": false,
      "isMissed": true,
      "isIncoming": true,
    },
    {
      "userImage":
          "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      "name": "Rahul Sharma",
      "time": "Today, 02:35 PM",
      "isVideo": true,
      "isMissed": false,
      "isIncoming": false,
    },
    {
      "userImage":
          "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      "name": "Priya Patel",
      "time": "Today, 11:20 AM",
      "isVideo": false,
      "isMissed": false,
      "isIncoming": true,
    },
    {
      "userImage":
          "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHVzZXIlMjBwcm9maWxlfGVufDB8fDB8fHww&w=1000&q=80",
      "name": "Amit Kumar",
      "time": "Yesterday, 09:15 PM",
      "isVideo": true,
      "isMissed": false,
      "isIncoming": false,
    },
    {
      "userImage":
          "https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHVzZXIlMjBwcm9maWxlfGVufDB8fDB8fHww&w=1000&q=80",
      "name": "Sneha Gupta",
      "time": "Yesterday, 06:30 PM",
      "isVideo": false,
      "isMissed": true,
      "isIncoming": false,
    },
    {
      "userImage":
          "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      "name": "Vijay Malhotra",
      "time": "Yesterday, 03:45 PM",
      "isVideo": true,
      "isMissed": true,
      "isIncoming": true,
    },
    {
      "userImage":
          "https://images.unsplash.com/photo-1619895862022-09114b41f16f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHVzZXIlMjBwcm9maWxlfGVufDB8fDB8fHww&w=1000&q=80",
      "name": "Neha Kapoor",
      "time": "3/20/25, 10:23 AM",
      "isVideo": false,
      "isMissed": false,
      "isIncoming": true,
    },
    {
      "userImage":
          "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHVzZXIlMjBwcm9maWxlfGVufDB8fDB8fHww&w=1000&q=80",
      "name": "Rajesh Singh",
      "time": "3/19/25, 08:15 PM",
      "isVideo": false,
      "isMissed": false,
      "isIncoming": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Create call link section
          ListTile(
            leading: CircleAvatar(
              backgroundColor: const Color(0xff008665),
              radius: 25,
              child: Icon(
                Icons.link,
                color: Colors.white,
                size: 22,
              ),
            ),
            title: Uihelper.customText(
              text: "Create call link",
              height: 15,
              fontweight: FontWeight.bold,
            ),
            subtitle: Uihelper.customText(
              text: "Share a link for your WhatsApp call",
              height: 13,
              color: Colors.grey,
            ),
          ),

          // Recent calls text
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Uihelper.customText(
                text: "Recent",
                height: 14,
                color: Colors.grey[700],
                fontweight: FontWeight.w500,
              ),
            ),
          ),

          // Call list
          Expanded(
            child: ListView.builder(
              itemCount: callsList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                        callsList[index]["userImage"]?.toString() ?? "",
                      ),
                    ),
                    title: Uihelper.customText(
                      text: callsList[index]["name"]?.toString() ?? "Unknown",
                      height: 15,
                      fontweight: FontWeight.bold,
                    ),
                    subtitle: Row(
                      children: [
                        Icon(
                          callsList[index]["isIncoming"] == true
                              ? Icons.call_received
                              : Icons.call_made,
                          color: callsList[index]["isMissed"] == true
                              ? Colors.red
                              : Colors.green,
                          size: 14,
                        ),
                        const SizedBox(width: 4),
                        Uihelper.customText(
                          text: callsList[index]["time"]?.toString() ?? "",
                          height: 13,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    trailing: Icon(
                      callsList[index]["isVideo"] == true
                          ? Icons.videocam
                          : Icons.call,
                      color: const Color(0xff008665),
                      size: 22,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff008665),
        onPressed: () {},
        child: const Icon(
          Icons.add_call,
          color: Colors.white,
        ),
      ),
    );
  }
}
