import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/color_constants.dart';
import '../../utils/constants.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
            body: Container(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.05),
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 25,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            SizedBox(height: screenHeight * 0.05),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                'Contact Us',
                style: GoogleFonts.cabin(
                    fontSize: 32, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
              child: Row(
                children: [
                  Text(
                    'Full Name',
                    style: GoogleFonts.cabin(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.02,
              ),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                child: TextField(
                  style: GoogleFonts.cabin(
                      fontSize: 12, color: AppColors.primaryColor),
                  decoration: InputDecoration(
                    hintText: "Enter your full name",
                    hintStyle: hintStyle,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
              child: Row(
                children: [
                  Text(
                    'E-mail',
                    style: GoogleFonts.cabin(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.02,
              ),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                child: TextField(
                  style: GoogleFonts.cabin(
                      fontSize: 12, color: AppColors.primaryColor),
                  decoration: InputDecoration(
                    hintText: "abc@example.com",
                    hintStyle: hintStyle,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.02,
              ),
              child: Row(
                children: [
                  Text(
                    'Reason for contacting',
                    style: GoogleFonts.cabin(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: screenWidth * 0.2,
                  ),
                  Text(
                    'SubCaregory',
                    style: GoogleFonts.cabin(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: TextField(
                      style: GoogleFonts.cabin(
                          fontSize: 12, color: AppColors.primaryColor),
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.arrow_drop_down_sharp,
                            size: 30,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        hintText: "Choose..",
                        hintStyle: hintStyle,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(10, 15, 3, 0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.09,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: TextField(
                      style: GoogleFonts.cabin(
                          fontSize: 12, color: AppColors.primaryColor),
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.arrow_drop_down_sharp,
                            size: 30,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        hintText: "Choose...",
                        hintStyle: hintStyle,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(10, 15, 3, 0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.02,
                vertical: screenHeight * 0.03,
              ),
              child: Row(
                children: [
                  Text(
                    "We'd love to read your message",
                    style: GoogleFonts.cabin(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.02,
                vertical: screenHeight * 0.03,
              ),
              child: Container(
                height: screenHeight * 0.2, // set the height of the container
                width: screenWidth * 0.8, // set the width of the container
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(10), // make the borders rounded
                  border: Border.all(
                    color: Colors.grey, // set the color of the border to black
                  ),
                ),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  style: GoogleFonts.cabin(
                      fontSize: 12, color: AppColors.primaryColor),
                  decoration: InputDecoration(
                    hintText: "Choose...",
                    hintStyle: hintStyle,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(8),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.25,
                  vertical: screenHeight * 0.01),
              child: SizedBox(
                height: screenHeight * 0.05,
                width: screenWidth * 0.4,
                child: ElevatedButton(
                  onPressed: () {
                    showImagePickerDialog(context, screenHeight, screenWidth);
                  },
                  child: Text(
                    'Send',
                    style: GoogleFonts.cabin(fontSize: 14, color: Colors.white),
                  ),
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                        BorderSide(color: AppColors.primaryColor)),
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
            Padding(
              padding: EdgeInsets.fromLTRB(
                  0, screenHeight * 0.03, 0, screenHeight * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '© 2023 intiqa - إنتقاء• Ver 1.0',
                    style: GoogleFonts.cabin(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    )));
  }

  void showImagePickerDialog(BuildContext context, screenHeight, screenWidth) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(100))),
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05, vertical: screenHeight * 0.03),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight * 0.05,
                ),
                Container(
                  width: screenHeight * 0.12,
                  height: screenHeight * 0.12,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green.withOpacity(0.9),
                        spreadRadius: screenWidth * 0.02,
                        blurRadius: screenWidth * 0.1,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: Image.asset('assets/images/check_white.png'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.1,
                      vertical: screenHeight * 0.06),
                  child: Text(
                    'Thank you very much for contacting us. We will get back to you as soon as possible',
                    style: GoogleFonts.cabin(fontSize: 14, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.05,
                  width: screenWidth * 0.4,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Ok',
                      style:
                          GoogleFonts.cabin(fontSize: 14, color: Colors.white),
                    ),
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                          BorderSide(color: AppColors.primaryColor)),
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
                SizedBox(
                  height: screenHeight * 0.05,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
