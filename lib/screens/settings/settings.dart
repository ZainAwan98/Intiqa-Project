import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intiqa_project/screens/settings/about_us.dart';
import 'package:intiqa_project/screens/settings/faq_help.dart';
import 'package:intiqa_project/screens/settings/settings_in.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.05),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
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
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  'Settings',
                  style: GoogleFonts.cabin(
                      fontSize: 32, fontWeight: FontWeight.w600),
                ),
              ),

              // SizedBox(height: screenHeight * 0.06),
              // Text(
              //   'General',
              //   style: GoogleFonts.cabin(
              //       fontSize: 12,
              //       fontWeight: FontWeight.w600,
              //       color: Color.fromARGB(255, 83, 88, 122)),
              // ),
              SizedBox(height: screenHeight * 0.1),
              GestureDetector(
                onTap: () {
                  //    Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => SettingsInScreen()),
                  // );
                },
                child: _settingsField(
                  'Edit Profile',
                  screenHeight,
                  screenWidth,
                  'assets/images/profile.png',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsInScreen()),
                  );
                },
                child: _settingsField('Setting', screenHeight, screenWidth,
                    'assets/images/settings.png'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AboutUs()),
                  );
                },
                child: _settingsField('Language', screenHeight, screenWidth,
                    'assets/images/message.png'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FaqHelpScreen()),
                  );
                },
                child: _settingsField('FAQ & Help', screenHeight, screenWidth,
                    'assets/images/warning.png'),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.015),
                  margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  decoration: const BoxDecoration(),
                  child: Row(
                    children: [
                      InkResponse(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/logout.png',
                          color: const Color.fromARGB(255, 252, 92, 90),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.15),
                      const Text(
                        'Logout',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 252, 92, 90)),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(
                    0, screenHeight * 0.18, 0, screenHeight * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '© 2023 intiqa - إنتقاء• Ver 1.0',
                      style: GoogleFonts.cabin(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _settingsField(
      String title, double screenHeight, double screenWidth, String imagePath) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: screenHeight * 0.015),
        margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        decoration: BoxDecoration(),
        child: Row(
          children: [
            Image.asset(imagePath),
            SizedBox(width: screenWidth * 0.15),
            Text(
              title,
              style: TextStyle(fontSize: 18),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
