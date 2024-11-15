import 'package:car_rental_app/constants/images.dart';
import 'package:car_rental_app/constants/number_sizes.dart';
import 'package:car_rental_app/data/data_models/car.dart';
import 'package:flutter/material.dart';

Widget carDetailsCard({required Car car}) {
  return SizedBox(
    height: xXLargeForth,
    child: Stack(
      children: [
        Container(
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: medium,
            vertical: small,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(large),
              topRight: Radius.circular(large),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                spreadRadius: 0,
                blurRadius: small,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: medium),
              Text(
                car.model,
                style: TextStyle(
                  fontSize: mediumSecond,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: small),
              Row(
                children: [
                  Icon(
                    Icons.directions_car,
                    color: Colors.white,
                    size: smallForth,
                  ),
                  SizedBox(width: xSmallSecond),
                  Text(
                    '>${car.distance} km',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: smallThird,
                    ),
                  ),
                  SizedBox(width: small),
                  Icon(
                    Icons.battery_full,
                    color: Colors.white,
                    size: smallThird,
                  ),
                  SizedBox(
                    width: xSmallSecond,
                  ),
                  Text(
                    car.fuelCapacity.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: smallThird,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.all(medium),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(medium),
                  topLeft: Radius.circular(medium),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Features",
                  style: TextStyle(fontSize: mediumSecond, fontWeight: FontWeight.bold),
                ),
                featureIcons(),
                SizedBox(
                  height: medium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${car.pricePerHour}/day',
                      style: TextStyle(
                        fontSize: mediumForth,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        child: Text(
                          'Book Now',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          height: xXLarge,
          child: Positioned(
            top: large,
            right: medium,
            child: Image.asset(
              toyotaCar,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget featureIcons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      featureIcon(Icons.local_gas_station, 'Diesel', 'Common Rail'),
      featureIcon(Icons.speed, 'Acceleration', '0 - 100km/s'),
      featureIcon(Icons.ac_unit, 'Cold', 'Temp Control'),
    ],
  );
}

Widget featureIcon(IconData icon, String title, String subtitle) {
  return Container(
    width: xXLarge,
    height: xXLarge,
    padding: EdgeInsets.all(xSmallSecond),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(small),
        border: Border.all(color: Colors.grey, width: xSmall)),
    child: Column(
      children: [
        Icon(
          icon,
          size: mediumThird,
        ),
        Text(title),
        Text(
          subtitle,
          style: TextStyle(color: Colors.grey, fontSize: small),
        )
      ],
    ),
  );
}
