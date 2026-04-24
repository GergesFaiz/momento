import 'package:cupertino_onboarding/cupertino_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:momento/home/home_screen.dart';
import 'package:momento/utils/app_assets.dart';
import 'package:momento/utils/app_colors.dart';

class OnBoardingScreen extends StatefulWidget {
  static const String routeName = "CupertinoOnboarding1";

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoOnboarding(

      pageTransitionAnimationCurve: Curves.bounceIn,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomButtonColor: Theme.of(
        context,
      ).bottomNavigationBarTheme.backgroundColor,

      onPressedOnLastPage: () =>
          Navigator.pushNamed(context, HomeScreen.routeName),
      pages: [
        WhatsNewPage(
          title: Image.asset(AppAssets.onBoardingImageIntro, fit: BoxFit.fill),
          features: [
            Text(
              "Personalize Your Experience",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              'Choose your preferred theme and'
              'language to get started with a'
              ' comfortable, tailored experience that suits your style.',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Row(
              children: [
                Text(
                  "Language",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.mainLightColor,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "English",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Arabic",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Theme",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.mainLightColor,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "title",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "title",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ],
          titleFlex: 20,
          titleToBodySpacing: 10,
          bodyToBottomSpacing: 10,
          titleTopIndent: 10,
          bodyPadding: EdgeInsets.all(15),
        ),

        // To create custom onboarding page, use
        // `CupertinoOnboardingPage` widget:

        // Actual code from the GIF example:
        BuildCupertinoOnboardingPage(
          image: AppAssets.onBoardingImageIllusration1,
          title: "Find Events That Inspire You",
          body:
              "Dive into a world of events crafted to fit your unique interests. Whether you're into live music, art workshops, professional networking, or simply discovering new experiences, we have something for everyone. Our curated recommendations will help you explore, connect, and make the most of every opportunity around you.",
          context: context,
        ),
        BuildCupertinoOnboardingPage(
          image: AppAssets.onBoardingImageIllusration2,
          title: "Effortless Event Planning",
          body:
              "Take the hassle out of organizing events with our all-in-one planning tools. From setting up invites and managing RSVPs to scheduling reminders and coordinating details, we’ve got you covered. Plan with ease and focus on what matters – creating an unforgettable experience for you and your guests.",
          context: context,
        ),
        BuildCupertinoOnboardingPage(
          image: AppAssets.onBoardingImageIllusration3,
          title: "Connect with Friends & Share Moments",
          body:
              "Make every event memorable by sharing the experience with others. Our platform lets you invite friends, keep everyone in the loop, and celebrate moments together. Capture and share the excitement with your network, so you can relive the highlights and cherish the memories.",
          context: context,
        ),
      ],
    );
  }
}

CupertinoOnboardingPage BuildCupertinoOnboardingPage({
  required String image,
  required String title,
  required String body,
  required BuildContext context,
}) {
  return CupertinoOnboardingPage(
    titleTopIndent: 10,
    bodyToBottomSpacing: 10,
    titleToBodySpacing: 10,
    bodyPadding: EdgeInsets.all(15),

    titleFlex: 3,
    title: Image.asset(image, fit: BoxFit.fill),
    body: Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.bodyMedium),
        Text(body, style: Theme.of(context).textTheme.bodySmall),
      ],
    ),
  );
}
