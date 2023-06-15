import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intiqa_project/screens/settings/contact_us.dart';
import 'package:intiqa_project/utils/color_constants.dart';

class FaqHelpScreen extends StatefulWidget {
  @override
  _FaqHelpScreenState createState() => _FaqHelpScreenState();
}

class _FaqHelpScreenState extends State<FaqHelpScreen> {
  int _selectedTabIndex = 0;

  List<String> _tabTitles = [
    "الخدمات",
    "المحتوى",
    "الإعلانات",
    "التسجيل والحساب",
  ];

  List<bool> _isExpanded = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  List<String> _faqQuestions = [
    "هل يمكنني تغيير رقم الجوال الخاص بي ؟",
    "ما هي طرق الدفع المتاحة ؟",
    "هل يمكنني استرداد الأموال المدفوعة ؟",
    "كيف يمكنني البحث عن المحتوى المناسب لي ؟",
    "ما هي مدة الاشتراك في الخدمات المدفوعة ؟",
  ];

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: screenHeight * 0.05),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.08,
                    vertical: screenHeight * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.09,
                    vertical: screenHeight * 0.02),
                child: Row(
                  children: [
                    Text(
                      "FAQ and Help",
                      style: GoogleFonts.cabin(
                          fontSize: screenHeight * 0.0382, color: Colors.black),
                    ),
                    SizedBox(width: screenWidth * 0.05),
                    InkWell(
                      onTap: () {},
                      child: Image.asset('assets/images/search.png'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.09,
                    vertical: screenHeight * 0.02),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      _tabTitles.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedTabIndex = index;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.03,
                              vertical: screenHeight * 0.01),
                          decoration: BoxDecoration(
                            color: _selectedTabIndex == index
                                ? AppColors.primaryColor
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            _tabTitles[index],
                            style: TextStyle(
                              color: _selectedTabIndex == index
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              SizedBox(
                height: screenHeight * 0.6,
                width: screenWidth * 0.8,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _isExpanded.length,
                    itemBuilder: ((context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.1,
                                vertical: screenHeight * 0.015),
                            child: Card(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        screenWidth * 0.25,
                                        screenHeight * 0.02,
                                        screenWidth * 0.01,
                                        screenHeight * 0.02),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _isExpanded[index] =
                                                  !_isExpanded[index];
                                            });
                                          },
                                          child: Row(
                                            children: [
                                              Text(
                                                _faqQuestions[0],
                                                style:
                                                    GoogleFonts.notoSansTaiTham(
                                                        fontSize: 10,
                                                        color: Colors.black),
                                              ),
                                              SizedBox(
                                                  width: screenWidth * 0.03),
                                              Image.asset(
                                                  'assets/images/dropdown.png'),
                                            ],
                                          ),
                                        ),
                                        if (_isExpanded[index])
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8),
                                            child: Text(
                                              "نعم، يمكنك تغيير رقم الجوال الخاص بك بسهولة عن طريق تحديث معلومات الحساب.",
                                              style:
                                                  GoogleFonts.notoSansTaiTham(
                                                      fontSize: 11,
                                                      color: Colors.grey),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    })),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.25,
                    vertical: screenHeight * 0.05),
                child: SizedBox(
                  height: screenHeight * 0.05,
                  width: screenWidth * 0.4,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ContactUs()),
                      );
                    },
                    child: Text(
                      'Contact Us',
                      style:
                          GoogleFonts.cabin(fontSize: 14, color: Colors.white),
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
              Padding(
                padding: EdgeInsets.fromLTRB(
                    0, screenHeight * 0.05, 0, screenHeight * 0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '© 2023 intiqa - إنتقاء• Ver 1.0',
                      style:
                          GoogleFonts.cabin(fontSize: 12, color: Colors.grey),
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
}
