import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/uihelper.dart';

class Chatscreen extends StatelessWidget {
  var arrContent = [
    {
      "userImage":
          "https://i.pinimg.com/736x/5a/6b/16/5a6b16956a2753892d9ee5714f6f112a.jpg",
      "name": "Somabrita Roy",
      "lastmsg": "When will you be back?",
      "time": "05:42 PM",
      "msg": "7",
    },
    {
      "userImage":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrqpnDy8pZ4pvLsy815csuGCeLkPkCO4cFkH_eWu1sk5ZI-9P51Fh1teDAmgM_BdlR29A&usqp=CAU",
      "name": "Sucharita Saha",
      "lastmsg": "You going out tonight?",
      "time": "06:20 PM",
      "msg": "2",
    },
    {
      "userImage":
          "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      "name": "Rahul Sharma",
      "lastmsg": "Meeting scheduled for tomorrow",
      "time": "04:15 PM",
      "msg": "3",
    },
    {
      "userImage":
          "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      "name": "Priya Patel",
      "lastmsg": "Did you see the document I sent?",
      "time": "02:30 PM",
      "msg": "1",
    },
    {
      "userImage":
          "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHVzZXIlMjBwcm9maWxlfGVufDB8fDB8fHww&w=1000&q=80",
      "name": "Amit Kumar",
      "lastmsg": "Let's catch up this weekend",
      "time": "Yesterday",
      "msg": "5",
    },
    {
      "userImage":
          "https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHVzZXIlMjBwcm9maWxlfGVufDB8fDB8fHww&w=1000&q=80",
      "name": "Sneha Gupta",
      "lastmsg": "Thanks for your help yesterday!",
      "time": "Yesterday",
      "msg": "2",
    },
    {
      "userImage":
          "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      "name": "Vijay Malhotra",
      "lastmsg": "Call me when you're free",
      "time": "3/20/25",
      "msg": "4",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 10), // 🟢 Added padding
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 8.0), // 🟢 Better padding
            child: ListTile(
              leading: CircleAvatar(
                radius: 30, // 🟢 Reduced size for better proportion
                backgroundImage: NetworkImage(
                  arrContent[index]["userImage"]?.toString() ??
                      "", // 🟢 Null safety check
                ),
              ),
              title: Uihelper.customText(
                  text: arrContent[index]["name"]?.toString() ?? "Unknown",
                  height: 15,
                  fontweight: FontWeight.bold),
              subtitle: Uihelper.customText(
                  text: arrContent[index]["lastmsg"]?.toString() ?? "",
                  height: 13,
                  color: Colors.grey),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Uihelper.customText(
                    text: arrContent[index]["time"]?.toString() ?? "",
                    height: 12,
                    color: const Color(0xff026500),
                  ),
                  const SizedBox(height: 5),
                  CircleAvatar(
                    backgroundColor: const Color(0xff026500),
                    radius: 10,
                    child: Uihelper.customText(
                      text: arrContent[index]["msg"]?.toString() ?? "0",
                      color: Colors.white,
                      height: 9,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) =>
            const Divider(), // 🟢 Added separator
        itemCount: arrContent.length,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff008665),
        onPressed: () {},
        child: Image.asset(
          'assets/images/chat.png',
        ),
      ),
    );
  }
}
