import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:homescreen/Animations/FadeAnimation.dart';
import 'package:introduction_screen/introduction_screen.dart';

// import 'login.dart';
import 'login3.dart';

// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(
//       SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
//     );

//     return MaterialApp(
//       title: 'Introduction screen',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: OnBoardingPage(),
//     );
//   }
// }

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => LoginPageScreen()),
    );
  }

  Widget _buildImage(String imageName) {
    return Align(
      child: Image.asset('images/$imageName.png', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontFamily: 'ExpletusSans',
          fontSize: 25,
          fontWeight: FontWeight.w900),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return FadeAnimation(
      0.0,
      IntroductionScreen(
        key: introKey,
        pages: [
          PageViewModel(
              title: "Welcome To BRIM Church App",
              body:
                  "The official mobile application of Bushfire Revival Int. Ministry",
              image: _buildImage('fire')),
          PageViewModel(
            title: "Tap the BRIM Circular Logo ",
            body:
                "This opens a status view for you to see current status updates from the app.",
            image: _buildImage('home'),
            decoration: PageDecoration(
              titleTextStyle: TextStyle(
                  fontFamily: 'ExpletusSans',
                  fontSize: 25,
                  fontWeight: FontWeight.w900),
              bodyTextStyle: bodyStyle,
              descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
              pageColor: Colors.white,
              imagePadding: EdgeInsets.only(bottom: 100),
            ),
          ),
          PageViewModel(
            title: "A Beautiful Home Screen",
            body:
                "You can view sermons, announcements, testimonials, events, hymns and a lot more.",
            image: _buildImage('all'),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Enjoy the Application",
            bodyWidget: Icon(
              Icons.thumb_up,
              size: 50,
              color: Colors.blue,
            ),
            image: _buildImage('enjoy'),
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
      ),
    );
  }
}
