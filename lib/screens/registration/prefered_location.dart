import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intiqa_project/screens/registration/sucess.dart';

import '../../utils/color_constants.dart';

class PreferedLocation extends StatefulWidget {
  const PreferedLocation({super.key});

  @override
  State<PreferedLocation> createState() => _PreferedLocationState();
}

class _PreferedLocationState extends State<PreferedLocation> {
  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: mediaHeight * 0.03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RegisterSuccessScreen()),
                );
              },
              child: Text(
                'Skip',
                style: GoogleFonts.cabin(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.withOpacity(0.8)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: mediaHeight * 0.2,
        ),
        Container(
          child: Icon(
            Icons.location_on,
            color: Colors.white,
            size: 35,
          ),
          width: mediaWidth * 0.2,
          height: mediaHeight * 0.08,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            shape: BoxShape.circle,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: mediaHeight * 0.03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enable location Services?',
                style: GoogleFonts.cabin(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.15),
          child: Text(
            '''For us to be able to help you the best that we can we recommend that you enable location tracking on your device.''',
            style: GoogleFonts.cabin(fontSize: 16, color: Colors.black),
          ),
        ),
        SizedBox(
          height: mediaHeight * 0.1,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.15),
          child: SizedBox(
            height: mediaHeight * 0.06,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RegisterSuccessScreen()),
                );
              },
              child: Text(
                'Yes, Enable Location',
                style: GoogleFonts.cabin(fontSize: 14, color: Colors.white),
              ),
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
      ],
    )));
  }
}
