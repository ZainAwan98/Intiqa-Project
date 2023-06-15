import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intiqa_project/utils/color_constants.dart';
import 'package:intiqa_project/widgets/circle_container.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
            body: Column(
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
        SizedBox(
          height: screenHeight * 0.05,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.12),
          child: Row(
            children: [
              Text(
                'Profile',
                style: GoogleFonts.cabin(
                    fontSize: 32, fontWeight: FontWeight.w600),
              ),
              Spacer(),
              TextButton(onPressed: () {}, child: Text('Edit Profile'))
            ],
          ),
        ),
        SizedBox(
          height: screenHeight * 0.05,
        ),
        Center(
          child: Container(
            child: Image.asset('assets/images/profile_image.png'),
            width: screenWidth * 0.35,
            height: screenHeight * 0.15,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primaryColor.withOpacity(0.5),
            ),
          ),
        ),
        Center(
          child: Text(
            'Mazen Alanzi',
            style: GoogleFonts.cabin(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Center(
          child: Text(
            'Real estate broker',
            style: GoogleFonts.cabin(fontSize: 10, color: Colors.grey),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '30',
                        style: GoogleFonts.montserrat(
                            fontSize: 14,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Text(
                        'Listings',
                        style: GoogleFonts.montserrat(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  width: screenWidth * 0.35,
                  height: screenHeight * 0.15,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    border: Border.all(color: AppColors.primaryColor),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '30',
                        style: GoogleFonts.montserrat(
                            fontSize: 14,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Text(
                        'Listings',
                        style: GoogleFonts.montserrat(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  width: screenWidth * 0.35,
                  height: screenHeight * 0.15,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    border: Border.all(color: AppColors.primaryColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    )));
  }

  Widget _profileContainer(
      screenHeight, screenWidth, text1, text2, borderColor) {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '30',
              style: GoogleFonts.montserrat(
                  fontSize: 14,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Text(
              'Listings',
              style: GoogleFonts.montserrat(
                fontSize: 10,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        width: screenWidth * 0.35,
        height: screenHeight * 0.15,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.transparent,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          border: Border.all(color: AppColors.primaryColor),
        ),
      ),
    );
  }
}
