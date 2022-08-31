import 'package:flutter/material.dart';
import 'package:habit_builder_app/consts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Onboarding extends StatelessWidget {
  Onboarding({Key? key}) : super(key: key);

  final List<PageViewModel> listPages = [
    PageViewModel(
      titleWidget: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              'WELCOME TO MONUMENTAL HABITS',
              style: nunito.copyWith(
                color: primaryColor,
                fontSize: 28,
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Image.asset(
            'assets/images/illustration1.png',
            width: 300,
            height: 400,
          )
        ],
      ),
      body: 'WE CAN HELP YOU TO BE A BETTER VERSION OF YOURSELF',
      decoration: PageDecoration(
        bodyPadding: const EdgeInsets.symmetric(horizontal: 32),
        bodyTextStyle: manrope.copyWith(
          color: primaryColor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    PageViewModel(
      titleWidget: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              'CREATE NEW\nHABIT EASILY',
              style: nunito.copyWith(
                color: primaryColor,
                fontSize: 28,
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Image.asset(
            'assets/images/illustration2.png',
            width: 300,
            height: 400,
          )
        ],
      ),
      body: 'WE CAN HELP YOU TO BE A BETTER VERSION OF YOURSELF',
      decoration: PageDecoration(
        bodyPadding: const EdgeInsets.symmetric(horizontal: 32),
        bodyTextStyle: manrope.copyWith(
          color: primaryColor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    PageViewModel(
      titleWidget: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              'KEEP TRACK OF YOUR PROGRESS',
              style: nunito.copyWith(
                color: primaryColor,
                fontSize: 28,
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Image.asset(
            'assets/images/illustration3.png',
            width: 300,
            height: 400,
          )
        ],
      ),
      body: 'WE CAN HELP YOU TO BE A BETTER VERSION OF YOURSELF',
      decoration: PageDecoration(
        bodyPadding: const EdgeInsets.symmetric(horizontal: 32),
        bodyTextStyle: manrope.copyWith(
          color: primaryColor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    PageViewModel(
      titleWidget: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              'JOIN A SUPPORTIVE COMMUNITY',
              style: nunito.copyWith(
                color: primaryColor,
                fontSize: 28,
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Image.asset(
            'assets/images/illustration4.png',
            width: 300,
            height: 400,
          )
        ],
      ),
      body: 'WE CAN HELP YOU TO BE A BETTER VERSION OF YOURSELF',
      decoration: PageDecoration(
        bodyPadding: const EdgeInsets.symmetric(horizontal: 32),
        bodyTextStyle: manrope.copyWith(
          color: primaryColor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        onDone: () {
          // When done button is press
        },
        onSkip: () {
          // You can also override onSkip callback
        },
        globalBackgroundColor: Colors.white,
        showDoneButton: true,
        showSkipButton: true,
        skip: Text('Skip', style: manropeTitle),
        next: Text('Next', style: manropeTitle),
        done: const Text('Done'),
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(10.0, 10.0),
          activeColor: primaryColor,
          color: secondaryColor,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        pages: listPages,
      ),
    );
  }
}
