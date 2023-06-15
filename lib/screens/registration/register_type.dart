import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intiqa_project/screens/settings/settings.dart';
import 'package:intiqa_project/utils/color_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intiqa_project/utils/route_helper.dart';

import '../../utils/constants.dart';

class RegisterTypeScreen extends StatefulWidget {
  const RegisterTypeScreen({super.key});

  @override
  State<RegisterTypeScreen> createState() => _RegisterTypeScreenState();
}

class _RegisterTypeScreenState extends State<RegisterTypeScreen> {
  bool _isFullNameEmpty = true;
  var gender;
  String _age = '';

  TextEditingController _controller =
      TextEditingController(text: 'Real estate marketer/broker');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
                    child: const Icon(
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
                  'Finally, tell us about the type of your profession in the field of real estate',
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
                  _buildNumberCircle(3, true),
                  SizedBox(
                    width: mediaWidth * 0.01,
                  ),
                  Image.asset('assets/images/line.png'),
                  SizedBox(
                    width: mediaWidth * 0.01,
                  ),
                  _buildCheckCircle(true),
                  SizedBox(
                    width: mediaWidth * 0.01,
                  ),
                  Image.asset('assets/images/line.png'),
                  SizedBox(
                    width: mediaWidth * 0.01,
                  ),
                  _buildCheckCircle(false),
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
                      'User Category',
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
                    readOnly: true,
                    controller: _controller,
                    decoration: InputDecoration(
                      suffixIcon: PopupMenuButton<String>(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        onSelected: (value) {
                          _controller.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return <PopupMenuEntry<String>>[
                            PopupMenuItem<String>(
                              onTap: () {
                                setState(() {
                                  _controller.text =
                                      'Real estate marketer/broker';
                                });
                              },
                              value: 'Real estate marketer/broker',
                              child: Text(
                                'Real estate marketer/broker',
                                style: GoogleFonts.cabin(
                                    fontSize: 12,
                                    color: AppColors.primaryColor),
                              ),
                            ),
                            PopupMenuItem<String>(
                              onTap: () {
                                setState(() {
                                  _controller.text = 'Real estate seeker';
                                });
                              },
                              value: 'Real estate seeker',
                              child: Text(
                                'Real estate seeker',
                                style: GoogleFonts.cabin(
                                    fontSize: 12,
                                    color: AppColors.primaryColor),
                              ),
                            ),
                            PopupMenuItem<String>(
                              value: 'Real estate institution / company',
                              onTap: () {
                                setState(() {
                                  _controller.text =
                                      'Real estate institution / company';
                                });
                              },
                              child: Text(
                                'Real estate institution / company',
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
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.fromLTRB(10, 15, 10, 10),
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
                      'User Name',
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
                      hintText: "example1123",
                      hintStyle: hintStyle,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: _controller.text == 'Real estate marketer/broker' ||
                        _controller.text == 'Real estate institution / company'
                    ? mediaHeight * 0.05
                    : 0,
              ),
              _controller.text == 'Real estate marketer/broker' ||
                      _controller.text == 'Real estate institution / company'
                  ? Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: mediaWidth * 0.1),
                      child: Row(
                        children: [
                          Text(
                            'Real estate advertiser number',
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
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 12),
                                  child: FaIcon(
                                    FontAwesomeIcons.asterisk,
                                    color: Color.fromARGB(255, 220, 87, 87),
                                    size: 10,
                                  ),
                                )
                              : Text(''),
                        ],
                      ),
                    )
                  : Text(''),
              SizedBox(
                height: _controller.text == 'Real estate marketer/broker' ||
                        _controller.text == 'Real estate institution / company'
                    ? mediaHeight * 0.02
                    : 0,
              ),
              _controller.text == 'Real estate marketer/broker' ||
                      _controller.text == 'Real estate institution / company'
                  ? Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: mediaWidth * 0.07),
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
                            hintText: "12435743...",
                            hintStyle: hintStyle,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                      ),
                    )
                  : Text(''),
              SizedBox(
                height: _controller.text == 'Real estate marketer/broker' ||
                        _controller.text == 'Real estate institution / company'
                    ? mediaHeight * 0.05
                    : 0,
              ),
              _controller.text == 'Real estate marketer/broker' ||
                      _controller.text == 'Real estate institution / company'
                  ? Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: mediaWidth * 0.1),
                      child: Row(
                        children: [
                          Text(
                            'license number',
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
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 12),
                                  child: FaIcon(
                                    FontAwesomeIcons.asterisk,
                                    color: Color.fromARGB(255, 220, 87, 87),
                                    size: 10,
                                  ),
                                )
                              : Text(''),
                        ],
                      ),
                    )
                  : Text(''),
              SizedBox(
                height: _controller.text == 'Real estate marketer/broker' ||
                        _controller.text == 'Real estate institution / company'
                    ? mediaHeight * 0.02
                    : 0,
              ),
              _controller.text == 'Real estate marketer/broker' ||
                      _controller.text == 'Real estate institution / company'
                  ? Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: mediaWidth * 0.07),
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
                            hintText: "823465745654...",
                            hintStyle: hintStyle,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                      ),
                    )
                  : Text(''),
              SizedBox(
                height: mediaHeight * 0.02,
              ),
              _controller.text == 'Real estate institution / company'
                  ? Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: mediaWidth * 0.1),
                      child: Row(
                        children: [
                          Text(
                            'Commercial Registration No',
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
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 12),
                                  child: FaIcon(
                                    FontAwesomeIcons.asterisk,
                                    color: Color.fromARGB(255, 220, 87, 87),
                                    size: 10,
                                  ),
                                )
                              : Text(''),
                        ],
                      ),
                    )
                  : Text(''),
              SizedBox(
                height: _controller.text == 'Real estate institution / company'
                    ? mediaHeight * 0.02
                    : 0,
              ),
              _controller.text == 'Real estate institution / company'
                  ? Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: mediaWidth * 0.07),
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
                            hintText: "23142165498519..",
                            hintStyle: hintStyle,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                      ),
                    )
                  : Text(''),
              SizedBox(
                height: _controller.text == 'Real estate marketer/broker' ||
                        _controller.text == 'Real estate institution / company'
                    ? mediaHeight * 0.07
                    : 0,
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
                            builder: (context) => SettingsScreen()),
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

  Widget _buildCheckCircle(bool isActive) {
    return Material(
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color:
              isActive ? Color(0xFF318AFC) : Color.fromARGB(255, 49, 138, 252),
          borderRadius: BorderRadius.circular(22),
          border: Border.all(
            color: isActive
                ? Color(0xFF318AFC)
                : Color.fromARGB(255, 49, 138, 252),
            width: isActive ? 0 : 1,
          ),
        ),
        child: Center(
          child: Icon(
            Icons.check,
            color: Colors.white,
            size: 12,
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
          const SizedBox(
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
                        shape: const RoundedRectangleBorder(
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
              child: const Icon(
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
