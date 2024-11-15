import 'package:car_rental_app/constants/colors_const.dart';
import 'package:car_rental_app/constants/number_sizes.dart';
import 'package:flutter/material.dart';

class CarDetailsProfileContainer extends StatelessWidget {
  const CarDetailsProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(medium),
        decoration: BoxDecoration(
            color: whiteDarker,
            borderRadius: BorderRadius.circular(medium),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: small,
                spreadRadius: xSmallSecond,
              ),
            ]),
        child: Column(
          children: [
            CircleAvatar(
              radius: xLarge,
              backgroundImage: AssetImage('lib/assets/user-clipart-xl.png'),
            ),
             SizedBox(height: small),
            const Text(
              'Jane Doe',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '\$4,253',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
