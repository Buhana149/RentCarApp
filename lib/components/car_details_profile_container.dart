import 'package:car_rental_app/constants/colors_const.dart';
import 'package:flutter/material.dart';

class CarDetailsProfileContainer extends StatelessWidget {
  const CarDetailsProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: whiteDarker,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ]),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('lib/assets/user-clipart-xl.png'),
            ),
            const SizedBox(height: 10),
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
