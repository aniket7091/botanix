import 'package:botanix/screens/bottom_navigation/bottom_nav.dart';
import 'package:botanix/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  final List<Map<String, String>> onboardingData = [
    {
      "title": "We provide high\nquality plants just for\nyou.",
      "image": "assets/images/plant.png",
    },
    {
      "title": "Your statisfaction is\nour number one\npriority.",
      "image": "assets/images/tree1.png",
    },
    {
      "title": "let's shop your\nfavorite plants with\nBOTANIX Now!",
      "image": "assets/images/tree3.png",
    },
  ];

  void nextPage() {
    if (currentIndex == onboardingData.length - 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => BottomNavScreen()),
      );
    } else {
      _controller.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.height(context, 3),
            vertical: Responsive.width(context, 2),
          ),
          child: Column(
            children: [
              /// Skip Button
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => BottomNavScreen()),
                    );
                  },
                  child: Text(
                    "Skip",
                    style: GoogleFonts.abhayaLibre(
                      fontSize: Responsive.fontSize(context, 17),
                    ),
                  ),
                ),
              ),

              /// Pages
              Expanded(
                child: PageView.builder(
                  controller: _controller,
                  itemCount: onboardingData.length,
                  onPageChanged: (index) {
                    setState(() => currentIndex = index);
                  },
                  itemBuilder: (_, index) {
                    final data = onboardingData[index];
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /// image for the onBoarding
                        Image.asset(
                          data["image"]!,
                          height: Responsive.height(context, 40),
                        ),
                        SizedBox(height: Responsive.height(context, 3)),

                        /// text for the tittle
                        Text(
                          data["title"]!,
                          style: GoogleFonts.radley(
                            fontSize: Responsive.fontSize(context, 30),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    );
                  },
                ),
              ),

              /// Dot Indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  onboardingData.length,
                  (index) => Container(
                    margin: EdgeInsets.all(Responsive.height(context, 0.4)),
                    width: currentIndex == index ? 20 : 8,
                    height: Responsive.height(context, 0.8),
                    decoration: BoxDecoration(
                      color: currentIndex == index ? Colors.green : Colors.grey,
                      borderRadius: BorderRadius.circular(
                        Responsive.height(context, 0.4),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: Responsive.height(context, 1.5)),

              /// Next Button
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Responsive.width(context, 3),
                ),
                child: ElevatedButton(
                  onPressed: nextPage,
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                      double.infinity,
                      Responsive.height(context, 5.4),
                    ),
                  ),
                  child: Text(
                    currentIndex == onboardingData.length - 1
                        ? "Get Started"
                        : "Next",
                    style: GoogleFonts.abhayaLibre(
                      fontSize: Responsive.fontSize(context, 16),
                    ),
                  ),
                ),
              ),

              SizedBox(height: Responsive.height(context, 3)),
            ],
          ),
        ),
      ),
    );
  }
}
