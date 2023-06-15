import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intiqa_project/screens/registration/register_type.dart';

import '../../utils/color_constants.dart';
import '../../widgets/circle_container.dart';

class RegisterSuccessScreen extends StatefulWidget {
  const RegisterSuccessScreen({super.key});

  @override
  State<RegisterSuccessScreen> createState() => _RegisterSuccessScreenState();
}

class _RegisterSuccessScreenState extends State<RegisterSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            body: Container(
      height: mediaHeight,
      width: mediaWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 1, 119, 253),
            Color.fromARGB(255, 81, 213, 236),
            Colors.white,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: mediaHeight * 0.6,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: mediaWidth * 0.2,
                  top: mediaHeight * 0.19,
                  child: CircleContainer(
                      mediaHeight * 0.3, Colors.white.withOpacity(0.2)),
                ),
                Positioned(
                  left: mediaWidth * 0.26,
                  top: mediaHeight * 0.22,
                  child: CircleContainer(
                      mediaHeight * 0.24, Colors.white.withOpacity(0.3)),
                ),
                Positioned(
                  left: mediaWidth * 0.33,
                  top: mediaHeight * 0.25,
                  child: CircleContainer(
                      mediaHeight * 0.18, Colors.white.withOpacity(0.4)),
                ),
                Positioned(
                  left: mediaWidth * 0.39,
                  top: mediaHeight * 0.28,
                  child: Container(
                    width: mediaHeight * 0.12,
                    height: mediaHeight * 0.12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Image.asset('assets/images/success_check.png'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.12),
            child: Text(
              '''Your account has been successfully 
                          created''',
              style: GoogleFonts.cabin(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: mediaWidth * 0.12, vertical: mediaHeight * 0.01),
            child: Text(
              '''Welcome with us, we are happy to have you
                                 join us''',
              style: GoogleFonts.cabin(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: mediaHeight * 0.04,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.1),
            child: SizedBox(
              height: mediaHeight * 0.06,
              width: mediaWidth * 0.8,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegisterTypeScreen()),
                  );
                },
                child: Text(
                  'Go!',
                  style: GoogleFonts.cabin(
                      fontSize: 14, color: AppColors.primaryColor),
                ),
                style: ButtonStyle(
                  side: MaterialStateProperty.all(
                      BorderSide(color: Colors.white)),
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(
                    Colors.white,
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
    )));
  }
}
