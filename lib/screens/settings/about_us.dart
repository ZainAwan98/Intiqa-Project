import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intiqa_project/screens/settings/contact_us.dart';

import '../../utils/color_constants.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: screenHeight * 0.05),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 25,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          SizedBox(height: screenHeight * 0.05),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
            child: Row(
              children: [
                Text(
                  'About Us',
                  style: GoogleFonts.cabin(
                      fontSize: 32, fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(screenWidth * 0.15, 5, 5, 0),
                  child: SizedBox(
                    height: screenHeight * 0.05,
                    width: screenWidth * 0.3,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ContactUs()),
                        );
                      },
                      child: Text(
                        'Contact Us',
                        style: GoogleFonts.cabin(
                            fontSize: 12, color: Colors.white),
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
                            borderRadius: BorderRadius.circular(10.0),
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
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.05,
          ),
          Center(child: Image.asset('assets/images/logo.png')),
          SizedBox(
            height: screenHeight * 0.06,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
            child: Text(
              'about intiqa',
              style:
                  GoogleFonts.cabin(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
            child: Text(
              '''This is a test text that can be modified later, this is a test text that can be modified later This is a test text that can be modified later
             This is a demo text that can be modified later This is a demo text that can be modified later This is a demo text that can be modified later
            This is a test text that can be modified later This is a test text that can be modified later This is a test text that can be modified later
            This is a demo text that can be modified later This is a demo text that can be modified later''',
              style: GoogleFonts.cabin(fontSize: 12, color: Colors.grey),
            ),
          ),
          _info(screenHeight, screenWidth, 'assets/images/icon1.png'),
          _info(screenHeight, screenWidth, 'assets/images/icon2.png'),
          _info(screenHeight, screenWidth, 'assets/images/icon3.png'),
          _info(screenHeight, screenWidth, 'assets/images/icon4.png'),
          Padding(
            padding: EdgeInsets.fromLTRB(
                0, screenHeight * 0.05, 0, screenHeight * 0.01),
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
          SizedBox(
            height: screenHeight * 0.05,
          ),
        ],
      ),
    )));
  }

  Widget _info(screenHeight, screenWidth, imagePath) {
    return Padding(
      padding: EdgeInsets.fromLTRB(screenWidth * 0.12, screenHeight * 0.02,
          screenWidth * 0.05, screenHeight * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: SizedBox(
              width: screenWidth * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '...This is a test script',
                    style: GoogleFonts.cabin(
                      fontSize: 12,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    '''This is a test script that can be modified later.This is a test script that can be modified later''',
                    style: GoogleFonts.cabin(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: screenWidth * 0.03),
          Image.asset(imagePath),
        ],
      ),
    );
  }
}
