import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:intiqa_project/utils/color_constants.dart';

class SettingsInScreen extends StatefulWidget {
  const SettingsInScreen({super.key});

  @override
  State<SettingsInScreen> createState() => _SettingsInScreenState();
}

class _SettingsInScreenState extends State<SettingsInScreen> {
  bool _notificationsEnabled = true;
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
            body: Container(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
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
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.06),
                      Text(
                        'General',
                        style:
                            GoogleFonts.cabin(fontSize: 12, color: Colors.grey),
                      ),
                      SizedBox(height: screenHeight * 0.05),
                      Row(
                        children: [
                          Text(
                            'Notifications',
                            style: GoogleFonts.cabin(
                                fontSize: 14, color: Colors.black),
                          ),
                          Spacer(),
                          FlutterSwitch(
                            activeColor: AppColors.primaryColor,
                            height: screenHeight * 0.035,
                            width: screenWidth * 0.14,
                            padding: 6,
                            value: _notificationsEnabled,
                            onToggle: (_) {
                              setState(() {
                                _notificationsEnabled = !_notificationsEnabled;
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.04,
                      ),
                      Row(
                        children: [
                          Text(
                            'Contact us',
                            style: GoogleFonts.cabin(
                                fontSize: 14, color: Colors.black),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black.withOpacity(0.5),
                              size: screenHeight * 0.025,
                            ),
                          ),
                          SizedBox(
                            width: screenWidth * 0.02,
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.15),
                      Text(
                        'Security',
                        style:
                            GoogleFonts.cabin(fontSize: 12, color: Colors.grey),
                      ),
                      SizedBox(
                        height: screenHeight * 0.04,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Privacy Policy',
                                style: GoogleFonts.cabin(
                                    fontSize: 14, color: Colors.black),
                              ),
                              SizedBox(
                                height: screenHeight * 0.02,
                              ),
                              Text(
                                'Choose what data you share with us',
                                style: GoogleFonts.cabin(
                                    fontSize: 14, color: Colors.grey),
                              ),
                            ],
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black.withOpacity(0.5),
                              size: screenHeight * 0.025,
                            ),
                          ),
                          SizedBox(
                            width: screenWidth * 0.02,
                          ),
                        ],
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
                                  fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ]))));
  }
}
