import 'package:car_rental_app/constants/colors_const.dart';
import 'package:car_rental_app/constants/images.dart';
import 'package:car_rental_app/constants/number_sizes.dart';
import 'package:car_rental_app/presentation/pages/car_list_screen.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyDarker,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(onBoardingPageImage),
                fit: BoxFit.contain,
              )),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Premium cars. \nEnjoy the luxury',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: largeSecond,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: small),
                Text(
                  'Premium and prestige car daily rental. \nExperience the thrill at a lower price',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: smallForth,
                  ),
                ),
                SizedBox(height: medium),
                SizedBox(
                  width: xXLargeFifth,
                  height: xxLargeThird,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => CarListScreen(),
                        ),
                        (route) => false,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                    child: Text(
                      "Let's Go!",
                      style: TextStyle(
                        fontSize: smallForth,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
