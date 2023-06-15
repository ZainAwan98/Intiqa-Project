import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intiqa_project/utils/color_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intiqa_project/utils/route_helper.dart';

import '../../utils/constants.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isFullNameEmpty = true;
  var gender;
  String _age = '';
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
                    onTap: () {},
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
                  "First, let's get to know you a little bit...",
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
                  _buildNumberCircle(2, false),
                  SizedBox(
                    width: mediaWidth * 0.01,
                  ),
                  Image.asset('assets/images/line.png'),
                  SizedBox(
                    width: mediaWidth * 0.01,
                  ),
                  _buildNumberCircle(1, true),
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
                      'Full Name',
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
                      hintText: "Enter your full name",
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
                      'Mobile Number',
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
                      hintText: "+966*******",
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
                      'Email',
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
                      hintText: "E@example.com",
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
                      'Password',
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
                      hintText: "Enter the password",
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
                      'Re-Password',
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
                      hintText: "Enter the password",
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
                padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.15),
                child: Row(
                  children: [
                    Text(
                      'Gender',
                      style: GoogleFonts.cabin(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: mediaWidth * 0.01,
                    ),
                    _isFullNameEmpty
                        ? FaIcon(
                            FontAwesomeIcons.asterisk,
                            color: Color.fromARGB(255, 220, 87, 87),
                            size: 10,
                          )
                        : Text(''),
                    SizedBox(
                      width: mediaWidth * 0.45,
                    ),
                    Text(
                      'Age',
                      style: GoogleFonts.cabin(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: mediaWidth * 0.01,
                    ),
                    _isFullNameEmpty
                        ? FaIcon(
                            FontAwesomeIcons.asterisk,
                            color: Color.fromARGB(255, 220, 87, 87),
                            size: 10,
                          )
                        : Text(''),
                  ],
                ),
              ),
              SizedBox(
                height: mediaHeight * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.07),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Radio(
                      value: "male",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    ),
                    Text("male"),
                    Radio(
                      value: "female",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    ),
                    Text("female"),
                    SizedBox(width: mediaWidth * 0.17),
                    _ageContainer(context, mediaHeight, mediaWidth),
                  ],
                ),
              ),
              SizedBox(
                height: mediaHeight * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'When you register for an account,you agree to',
                    style: GoogleFonts.notoSansTaiTham(fontSize: 12),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'terms of Use and Privacy Policy ',
                      style: GoogleFonts.notoSansTaiTham(
                          fontSize: 12, color: Colors.lightBlue),
                    ),
                  ),
                  Text(
                    'of intiqa.',
                    style: GoogleFonts.notoSansTaiTham(fontSize: 12),
                  ),
                ],
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
                      Navigator.pushNamed(context, RouteHelper.register2Route);
                    },
                    child: const Text('Continue'),
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

  Widget _ageContainer(BuildContext context, mediaHeight, mediaWidth) {
    return Container(
      height: mediaHeight * 0.06,
      width: mediaWidth * 0.22,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.05),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.primaryColor, width: 0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'سنة',
            style: GoogleFonts.notoSansTaiTham(
              fontSize: 12,
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(width: 2),
          Text(
            _age,
            style: GoogleFonts.notoSansTaiTham(
              fontSize: 12,
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(
            width: 3,
          ),
          DropdownButtonHideUnderline(
            child: InkWell(
              onTap: () {
                final PopupMenuThemeData popupMenuTheme =
                    PopupMenuTheme.of(context);
                showMenu(
                        context: context,
                        position: RelativeRect.fromLTRB(
                          mediaWidth * 0.85,
                          mediaHeight * 0.7,
                          mediaWidth * 0.20,
                          mediaHeight * 0.08,
                        ),
                        items: List.generate(
                          100,
                          (index) => PopupMenuItem<int>(
                            value: index + 1,
                            child: Text('${index + 1}'),
                          ),
                        ),
                        elevation: popupMenuTheme.elevation,
                        color: popupMenuTheme.color,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        constraints:
                            BoxConstraints(maxHeight: mediaHeight * 0.2))
                    .then((value) {
                  if (value != null) {
                    setState(() {
                      _age = value.toString();
                    });
                  }
                });
              },
              child: Icon(
                Icons.arrow_drop_down,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ],
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
