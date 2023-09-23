import 'package:flutter/material.dart';
import 'package:travely/routes/home/home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      //extendBody: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),

            Container(
              height: MediaQuery.of(context).size.height * .5,
              width: 220,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/onboarding.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36.0),
                  topRight: Radius.circular(64.0),
                ),
              ),
            ),
            // Image.asset(
            //   'assets/images/onboarding.jpg',
            // ),

            const SizedBox(height: 32.0),
            Text(
              'Explore your journey \nonly with us',
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.center,
              overflow: TextOverflow.fade,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Colors.black, fontSize: 36),
            ),
            const SizedBox(height: 32.0),
            Text(
              'All your vacations distinations are here. Enjoy your holiday.',
              maxLines: 3,
              softWrap: true,
              textAlign: TextAlign.center,
              overflow: TextOverflow.fade,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: Colors.black, fontSize: 16),
            ),
            //const SizedBox(height: 36.0),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 48.0),
              child: SizedBox(
                width: double.maxFinite,
                height: 46,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).pushReplacementNamed(
                    //   HomeScreen.routeName,
                    // );
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    elevation: 4.0,
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  child: Text(
                    'Get Started',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
