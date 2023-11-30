import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:newapp/review_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int currentIndex = 0;
  String p = '';

  final List<OnboardingItem> onboardingItems = [
    OnboardingItem(
      image: 'assets/images/ace.png',
      title: 'Step into the Future of Shopping',
      description:
          'Wekcome to ByLaive, where the only thing faster than our streams is how quickly your wishlist fils up!',
    ),
    OnboardingItem(
      image: 'assets/images/Onboarding page 2 Vector.png',
      title: 'See It Live, Buy It Now',
      description:
          'Our hosts are live, the products are real, and the discounts are seriously surreal. Let the live shopping spree begin',
    ),
    OnboardingItem(
      image: 'assets/images/Onboarding page 3 Vector.png',
      title: 'Connect,Shop,Repeat',
      description:
          "Unlock more than just deals,join our community and discover why shopping is better when it's shared.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: onboardingItems.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              // itemBuilder: (context, index) {
              //   return OnboardingItemWidget(
              //       onboardingItem: onboardingItems[currentIndex]);
              // },
              itemBuilder: (context, index) {
                return OpenContainer(
                  transitionType: ContainerTransitionType.fadeThrough,
                  openBuilder: (BuildContext context, VoidCallback _) {
                    return OnboardingItemWidget(
                        onboardingItem: onboardingItems[index]);
                  },
                  closedBuilder:
                      (BuildContext context, VoidCallback openContainer) {
                    return OnboardingItemWidget(
                        onboardingItem: onboardingItems[index]);
                  },
                );
              },
            ),
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     if (currentIndex < onboardingItems.length - 1) {
          //       setState(() {
          //         currentIndex++;
          //       });
          //     } else {
          //       // Handle completion of onboarding, e.g., navigate to next screen
          //       Navigator.pushReplacement(
          //         context,
          //         MaterialPageRoute(builder: (context) => const ReviewScreen()),
          //       );
          //     }
          //   },
          //   child: Text(
          //     currentIndex < onboardingItems.length - 1
          //         ? 'Next'
          //         : 'Get Started',
          //   ),
          // ),
          BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Skip button
                TextButton(
                  onPressed: () {
                    // Handle skip logic, e.g., navigate to next screen
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ReviewScreen()),
                    );
                  },
                  child: Text('Skip'),
                ),
                // Previous button
                if (currentIndex > 0)
                  ElevatedButton(
                    // onPressed: () {
                    //   setState(() {
                    //     currentIndex--;
                    //   });
                    // },
                    onPressed: () {
                      _pageController.previousPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Text('Previous'),
                  ),
                // Next/Get Started button
                ElevatedButton(
                  // onPressed: () {
                  //   if (currentIndex < onboardingItems.length - 1) {
                  //     setState(() {
                  //       currentIndex++;
                  //     });
                  //   }
                  onPressed: () {
                    if (currentIndex < onboardingItems.length - 1) {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      // Handle completion of onboarding, e.g., navigate to next screen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ReviewScreen()),
                      );
                    }
                  },
                  child: Text(
                    currentIndex < onboardingItems.length - 1
                        ? 'Next'
                        : 'Get Started',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class OnboardingItem {
  final String image;
  // final String image;
  final String title;
  final String description;

  OnboardingItem({
    required this.image,
    required this.title,
    required this.description,
  });
}

class OnboardingItemWidget extends StatelessWidget {
  final OnboardingItem onboardingItem;

  const OnboardingItemWidget({Key? key, required this.onboardingItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(onboardingItem.image),
          const SizedBox(height: 30),
          Text(
            onboardingItem.title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            onboardingItem.description,
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
