import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/uihelper.dart';

class OtpScreen extends StatefulWidget {
  String phoneNumber;
  OtpScreen({super.key, required this.phoneNumber});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();
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
              text: "Verifying your number",
              height: 20,
              fontweight: FontWeight.w700,
              color: const Color(0xff00A884),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Uihelper.customText(
              text: "You’ve tried to register +91${widget.phoneNumber}  ",
              height: 16),
          const SizedBox(
            height: 5,
          ),
          Uihelper.customText(
              text: "recently. Wait before requesting an sms or a call.",
              height: 16),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Uihelper.customText(text: "with your code. ", height: 16),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Uihelper.customText(
                  text: "Wrong number?",
                  height: 16,
                  color: const Color(0xff00A884),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Uihelper.customContainer(otp1Controller),
              const SizedBox(
                width: 10,
              ),
              Uihelper.customContainer(otp2Controller),
              const SizedBox(
                width: 10,
              ),
              Uihelper.customContainer(otp3Controller),
              const SizedBox(
                width: 10,
              ),
              Uihelper.customContainer(otp4Controller),
              const SizedBox(
                width: 10,
              ),
              Uihelper.customContainer(otp5Controller),
              const SizedBox(
                width: 10,
              ),
              Uihelper.customContainer(otp6Controller),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {},
            child: Uihelper.customText(
              text: "Didn't receive code?",
              height: 16,
              color: Color(0xff00A884),
            ),
          ),
        ],
      ),
      floatingActionButton:
          Uihelper.customButton(callback: () {}, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
