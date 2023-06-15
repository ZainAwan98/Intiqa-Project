import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intiqa_project/utils/route_helper.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../utils/color_constants.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otpController = TextEditingController();
  int _counter = 60;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    otpController.dispose();
    _timer!.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer!.cancel();
        }
      });
    });
  }

  void _resendOtp() {
    // code to resend OTP
  }

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: mediaHeight * 0.06,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: mediaWidth * 0.15,
                ),
                InkResponse(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 22,
                    color: AppColors.arrowButtonColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: mediaHeight * 0.05,
            ),
            Container(
              child: Image.asset('assets/images/check.png'),
              width: mediaWidth * 0.3,
              height: mediaHeight * 0.15,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(
              height: mediaHeight * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'OTP Verification',
                  style: GoogleFonts.cabin(
                      fontSize: 33,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: mediaHeight * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.05),
              child: Text(
                'We have sent you a verification code to the following phone number',
                style: GoogleFonts.cabin(
                  fontSize: 13,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: mediaHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '(',
                  style: GoogleFonts.cabin(
                    fontSize: 19,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '+966**********',
                  style: GoogleFonts.cabin(
                    fontSize: 19,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  ')',
                  style: GoogleFonts.cabin(
                    fontSize: 19,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: mediaHeight * 0.02,
            ),
            SizedBox(height: mediaHeight * 0.06),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.09),
              child: PinCodeTextField(
                cursorColor: AppColors.primaryColor,
                appContext: context,
                length: 4,
                obscureText: true,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  activeColor: Colors.grey,
                  selectedColor: Colors.grey,
                  selectedFillColor: Colors.grey.withOpacity(0.1),
                  fieldHeight: 50,
                  inactiveColor: Colors.grey,
                  borderWidth: 1,
                  inactiveFillColor: Colors.grey.withOpacity(0.1),
                  fieldWidth: 50,
                  activeFillColor: Colors.grey.withOpacity(0.1),
                ),
                animationDuration: Duration(milliseconds: 300),
                enableActiveFill: true,
                onCompleted: (v) {
                  print("Completed");
                },
                onChanged: (value) {
                  print(value);
                  setState(() {});
                },
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
              ),
            ),
            SizedBox(
              height: mediaHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.timer_sharp,
                  color: Colors.lightBlue,
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '${_counter ~/ 60}:${(_counter % 60).toString().padLeft(2, '0')}',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: mediaHeight * 0.08,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.07),
              child: SizedBox(
                height: mediaHeight * 0.06,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, RouteHelper.resgisterPreferableRoute);
                  },
                  child: const Text('Submit'),
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(
                      AppColors.primaryColor,
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: const BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: mediaHeight * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Did you not receive a message?',
                  style: TextStyle(fontSize: 12),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    ' Send a new code',
                    style: GoogleFonts.cabin(
                        fontSize: 12,
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
