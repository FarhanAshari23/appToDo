import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class SplashScrenn extends StatefulWidget {
  const SplashScrenn({super.key});

  @override
  State<SplashScrenn> createState() => _SplashScrennState();
}

class _SplashScrennState extends State<SplashScrenn> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: const Color(0xff240750),
      pages: [
        PageViewModel(
          decoration: PageDecoration(
            bodyTextStyle: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            titleTextStyle: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          title: "Welcome to ToDo App!!",
          body: "The app can manage your activity",
          image: Center(
            child: SizedBox(
              width: 350,
              height: 350,
              child: Lottie.asset(
                'assets/Work.json',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
            bodyTextStyle: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            titleTextStyle: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          title: "Add your activity!",
          body: "You can make a list of activities that you will do that day",
          image: Center(
            child: SizedBox(
              width: 300,
              height: 300,
              child: Lottie.asset(
                'assets/Add data.json',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
            bodyTextStyle: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            titleTextStyle: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          title: "Delete your activity",
          body:
              "After you do that activity, you can erase that then continue to the next activity",
          image: Center(
            child: SizedBox(
              width: 350,
              height: 350,
              child: Lottie.asset(
                'assets/remove data.json',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
      done: Text(
        'DONE',
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      showNextButton: true,
      next: Text(
        'NEXT',
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      showBackButton: true,
      back: Text(
        'BACK',
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      onDone: () {
        Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
      },
    );
  }
}
