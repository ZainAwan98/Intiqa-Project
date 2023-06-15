import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intiqa_project/utils/color_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/constants.dart';
import '../../utils/route_helper.dart';

class RegisterSecondScreen extends StatefulWidget {
  const RegisterSecondScreen({super.key});

  @override
  State<RegisterSecondScreen> createState() => _RegisterSecondScreenState();
}

class _RegisterSecondScreenState extends State<RegisterSecondScreen> {
  bool _isFullNameEmpty = true;
  var gender;
  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, mediaHeight * 0.05),
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
                height: mediaHeight * 0.08,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.1),
                child: Text(
                  'Create your account',
                  style: GoogleFonts.cabin(
                      fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: mediaHeight * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.1),
                child: Text(
                  'Second, Tell us about the area where you live',
                  style: GoogleFonts.cabin(
                      fontSize: 12, color: Color.fromARGB(255, 57, 65, 80)),
                ),
              ),
              SizedBox(
                height: mediaHeight * 0.03,
              ),
              Row(
                children: [
                  SizedBox(
                    width: mediaWidth * 0.3,
                  ),
                  _buildNumberCircle(3, false),
                  SizedBox(
                    width: mediaWidth * 0.01,
                  ),
                  Image.asset('assets/images/line.png'),
                  SizedBox(
                    width: mediaWidth * 0.01,
                  ),
                  _buildNumberCircle(2, true),
                  SizedBox(
                    width: mediaWidth * 0.01,
                  ),
                  Image.asset('assets/images/line.png'),
                  SizedBox(
                    width: mediaWidth * 0.01,
                  ),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: Color(0xFF318AFC),
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(
                        color: Color(0xFF1E2235),
                        width: 0,
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: mediaHeight * 0.04,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.1),
                child: Row(
                  children: [
                    Text(
                      'City',
                      style: GoogleFonts.cabin(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: mediaWidth * 0.04,
                    ),
                    _isFullNameEmpty
                        ? Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                            child: FaIcon(
                              FontAwesomeIcons.asterisk,
                              color: Color.fromARGB(255, 220, 87, 87),
                              size: 10,
                            ),
                          )
                        : Text(''),
                  ],
                ),
              ),
              SizedBox(
                height: mediaHeight * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.07),
                child: Container(
                  padding: EdgeInsets.all(8),
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
                      hintText: "Choose a city...",
                      hintStyle: hintStyle,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(10),
                      suffixIcon: PopupMenuButton<String>(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        onSelected: (value) {},
                        itemBuilder: (BuildContext context) {
                          return <PopupMenuEntry<String>>[
                            PopupMenuItem<String>(
                              onTap: () {},
                              value: 'Abu Dhabi',
                              child: Text(
                                'Abu Dhabi',
                                style: GoogleFonts.cabin(
                                    fontSize: 12,
                                    color: AppColors.primaryColor),
                              ),
                            ),
                            PopupMenuItem<String>(
                              value: 'Sharjah',
                              onTap: () {},
                              child: Text(
                                'Sharjah',
                                style: GoogleFonts.cabin(
                                    fontSize: 12,
                                    color: AppColors.primaryColor),
                              ),
                            ),
                          ];
                        },
                        child: Icon(
                          Icons.arrow_drop_down_sharp,
                          size: 30,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: mediaHeight * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.1),
                child: Row(
                  children: [
                    Text(
                      'Governorate',
                      style: GoogleFonts.cabin(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: mediaWidth * 0.04,
                    ),
                    _isFullNameEmpty
                        ? Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                            child: FaIcon(
                              FontAwesomeIcons.asterisk,
                              color: Color.fromARGB(255, 220, 87, 87),
                              size: 10,
                            ),
                          )
                        : Text(''),
                  ],
                ),
              ),
              SizedBox(
                height: mediaHeight * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.07),
                child: Container(
                  padding: EdgeInsets.all(8),
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
                      hintText: "Choose a governorate...",
                      hintStyle: hintStyle,
                      border: InputBorder.none,
                      suffixIcon: PopupMenuButton<String>(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        onSelected: (value) {},
                        itemBuilder: (BuildContext context) {
                          return <PopupMenuEntry<String>>[
                            PopupMenuItem<String>(
                              onTap: () {},
                              value: 'Diriyah',
                              child: Text(
                                'Diriyah',
                                style: GoogleFonts.cabin(
                                    fontSize: 12,
                                    color: AppColors.primaryColor),
                              ),
                            ),
                            PopupMenuItem<String>(
                              value: 'AlKharj',
                              onTap: () {},
                              child: Text(
                                'AlKharj',
                                style: GoogleFonts.cabin(
                                    fontSize: 12,
                                    color: AppColors.primaryColor),
                              ),
                            ),
                          ];
                        },
                        child: Icon(
                          Icons.arrow_drop_down_sharp,
                          size: 30,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: mediaHeight * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.1),
                child: Row(
                  children: [
                    Text(
                      'Neighbourhood',
                      style: GoogleFonts.cabin(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: mediaWidth * 0.04,
                    ),
                    _isFullNameEmpty
                        ? Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                            child: FaIcon(
                              FontAwesomeIcons.asterisk,
                              color: Color.fromARGB(255, 220, 87, 87),
                              size: 10,
                            ),
                          )
                        : Text(''),
                  ],
                ),
              ),
              SizedBox(
                height: mediaHeight * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.07),
                child: Container(
                  padding: EdgeInsets.all(8),
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
                      hintText: "Choose a neighbourhood...",
                      hintStyle: hintStyle,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: mediaHeight * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.1),
                child: Row(
                  children: [
                    Text(
                      'Street',
                      style: GoogleFonts.cabin(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: mediaHeight * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.07),
                child: Container(
                  padding: EdgeInsets.all(8),
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
                      hintText: "Enter the Street",
                      hintStyle: hintStyle,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: mediaHeight * 0.05,
              ),
              SizedBox(
                height: mediaHeight * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.15),
                child: SizedBox(
                  height: mediaHeight * 0.06,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteHelper.otpRoute);
                    },
                    child: const Text('Continue'),
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.primaryColor),
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
          ),
        ),
      ),
    ));
  }

  Widget _buildNumberCircle(int number, bool isActive) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF318AFC) : Colors.white,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: Color(0xFF1E2235),
          width: isActive ? 0 : 1,
        ),
      ),
      child: Center(
        child: Text(
          '$number',
          style: TextStyle(
            color: isActive ? Colors.white : Color(0xFF1E2235),
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

// class LinePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final Paint paint = Paint()
//       ..color = Colors.black
//       ..strokeWidth = 1.0
//       ..style = PaintingStyle.stroke;

//     final Path path = Path();

//     // First segment
//     path.moveTo(0, size.height / 8);
//     path.lineTo(size.width / 20, size.height / 8);

//     // Second segment
//     path.moveTo(size.width / 20, size.height / 2);
//     path.lineTo(2 * size.width / 20, size.height / 2);

//     // Third segment
//     path.moveTo(2 * size.width / 20 + size.width / 40, size.height / 2);
//     path.lineTo(4 * size.width / 20, size.height / 2);

//     // Fourth segment
//     path.moveTo(4 * size.width / 20 + size.width / 40, size.height / 2);
//     path.lineTo(7 * size.width / 20, size.height / 2);

//     // Fifth segment
//     path.moveTo(7 * size.width / 20 + size.width / 40, size.height / 2);
//     path.lineTo(8 * size.width / 20, size.height / 8);

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return false;
//   }
// }
