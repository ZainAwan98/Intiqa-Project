import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intiqa_project/screens/registration/prefered_location.dart';
import 'package:intiqa_project/utils/color_constants.dart';

class RegisterPreferable extends StatefulWidget {
  @override
  _RegisterPreferableState createState() => _RegisterPreferableState();
}

class _RegisterPreferableState extends State<RegisterPreferable> {
  List<bool> _selection = [
    true,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
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
                            builder: (context) => PreferedLocation()),
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
                height: mediaHeight * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.03),
                child: Text(
                  'Select your preferable',
                  style: GoogleFonts.cabin(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              SizedBox(height: mediaHeight * 0.01),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.03),
                child: Text(
                  'real estate type',
                  style: GoogleFonts.cabin(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              SizedBox(height: mediaHeight * 0.02),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.03),
                child: Text(
                  'You can edit this later on your account setting',
                  style: GoogleFonts.cabin(fontSize: 12, color: Colors.grey),
                ),
              ),
              SizedBox(height: mediaHeight * 0.03),
              SizedBox(
                height: mediaHeight * 0.5,
                child: ListView.builder(
                  itemCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return _selectionWidget(
                        mediaHeight, mediaWidth, _selection[index], index);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.07),
                child: SizedBox(
                  height: mediaHeight * 0.06,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PreferedLocation()),
                      );
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
    );
  }

  Widget _selectionWidget(mediaHeight, mediaWidth, selection, index) {
    return Padding(
      padding: EdgeInsets.fromLTRB(mediaWidth * 0.02, mediaHeight * 0.01,
          mediaWidth * 0.25, mediaHeight * 0.01),
      child: Container(
        height: mediaHeight * 0.12,
        width: mediaWidth * 0.5,
        decoration: BoxDecoration(
          color: Colors.blueGrey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Row(
          children: [
            SizedBox(
              width: mediaWidth * 0.04,
            ),
            Container(
              height: mediaHeight * 0.09,
              width: mediaWidth * 0.28,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child:
                    Image.asset('assets/images/house1.png', fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              width: mediaWidth * 0.045,
            ),
            Text(
              'Villa',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: mediaWidth * 0.09,
            ),
            InkResponse(
              onTap: () {
                setState(() {
                  // Update the selection list
                  for (int i = 0; i < _selection.length; i++) {
                    _selection[i] = i == index;
                  }
                });
              },
              child: Container(
                width: mediaWidth * 0.08,
                height: mediaHeight * 0.08,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
                child: Icon(
                  Icons.check,
                  color: selection ? AppColors.primaryColor : Colors.grey,
                  size: 12,
                ),
              ),
            ),
            SizedBox(width: mediaWidth * 0.03),
          ],
        ),
      ),
    );
  }
}
