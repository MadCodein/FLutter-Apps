import 'package:flutter/material.dart';
import 'package:freelance_project/views/authenticate.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/services.dart';
// import 'package:homescreen/Animations/FadeAnimation.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => LoginPage()),
    );
  }

  Widget _buildImage(String imageName, String ext) {
    return Align(
      child: Image.asset('assets/$imageName.$ext', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 23.0,
        fontWeight: FontWeight.w500,
        color: Color(0xFF21202A),
      ),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white24,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Welcome To ZetaTech Freelance",
          body:
              "The official freelance mobile application developed by ZetaTech",
          image: _buildImage('freelance', 'jpeg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Looking for a job",
          body: "Get available jobs from our numerous pool of jobs.",
          image: _buildImage('search_job', 'jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Get Job Done",
          body:
              "Post Jobs and have our qualified freelancers get it done for you.",
          image: _buildImage('get_job', 'jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "All in ZetaTech Freelance",
          // body: "k",
          bodyWidget: Icon(
            Icons.thumb_up,
            size: 50,
            color: Colors.blue,
          ),
          image: _buildImage('freelance2', 'jpg'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
