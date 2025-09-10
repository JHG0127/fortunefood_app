import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'recommand_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Fortune Food',
            style: GoogleFonts.nanumGothic(fontSize: screenWidth * 0.05),
          ),
          backgroundColor: Colors.white,
          elevation: 0.2,
          shadowColor: Colors.grey.shade300,
          leading: Container(),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  // color: Colors.green.shade200,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.green.shade200,
                    width: screenWidth * 0.009,
                  ),
                ),
                width: screenWidth * 0.8,
                height: screenHeight * 0.5,
                child: Center(child: Text('MAP', textAlign: TextAlign.center)),
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            Text(
              '버튼을 눌러 맛집을 추천 받으세요.',
              style: GoogleFonts.jua(
                textStyle: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            Padding(
              padding: EdgeInsets.only(bottom: screenHeight * 0.07),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RecommandScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade300,
                  // foregroundColor: Colors.blue.shade100,
                  minimumSize: Size(screenWidth * 0.6, screenHeight * 0.06),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(
                      color: Colors.black.withOpacity(0.5),
                      width: screenWidth * 0.004,
                    ),
                  ),
                  elevation: 8,
                  shadowColor: Colors.black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min, // Row가 버튼 크기에 맞게
                  children: [
                    Text(
                      "룰렛 돌리기",
                      style: GoogleFonts.jua(
                        fontSize: screenWidth * 0.055,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        letterSpacing: screenWidth * 0.004,
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.7),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.024),
                    Icon(
                      Icons.replay_rounded,
                      size: screenWidth * 0.07,
                      color: Colors.blue.shade800,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
