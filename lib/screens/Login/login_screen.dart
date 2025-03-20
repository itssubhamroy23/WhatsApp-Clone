import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/uihelper.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  String selectedCountry = "India";

  List<String> countries = [
    "Afghanistan",
    "Albania",
    "Algeria",
    "Andorra",
    "Angola",
    "Argentina",
    "Armenia",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Benin",
    "Bhutan",
    "Bolivia",
    "India"
  ];

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
                text: "Enter your phone number",
                height: 20,
                color: const Color(0XFF00A884),
                fontweight: FontWeight.bold),
          ),
          const SizedBox(
            height: 50,
          ),
          Uihelper.customText(
              text: "WhatsApp will need to verify your phone", height: 16),
          const SizedBox(
            height: 3,
          ),
          Uihelper.customText(
              text: "number. Carrier charges may apply.", height: 16),
          const SizedBox(
            height: 3,
          ),
          Uihelper.customText(
              text: "What's my number?",
              height: 16,
              color: const Color(0xff00A884),
              fontweight: FontWeight.w400),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: DropdownButtonFormField(
              items: countries.map((String country) {
                return DropdownMenuItem(
                  child: Text(country.toString()),
                  value: country,
                );
              }).toList(),
              onChanged: (value) {
                setState(
                  () {
                    selectedCountry = value!;
                  },
                );
              },
              value: selectedCountry,
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff00A884),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Color(0xff00A884),
                )),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 40,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "+91",
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff00A884),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff00A884),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              SizedBox(
                width: 240,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: phoneController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff00A884),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      floatingActionButton:
          Uihelper.customButton(callback: () {}, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
