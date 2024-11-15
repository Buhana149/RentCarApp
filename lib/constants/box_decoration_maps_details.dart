import 'package:car_rental_app/constants/number_sizes.dart';
import 'package:flutter/material.dart';

extension BoxDecorationMapsDetails on BoxDecoration {
  static BoxDecoration roundedBlackBox(double large) {
    return BoxDecoration(
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
        ]);
  }

  static BoxDecoration roundedGreykBox(double large) {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(small),
        border: Border.all(color: Colors.grey, width: xSmall));
  }

  static BoxDecoration roundedWhiteBox(double large) {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(medium),
          topLeft: Radius.circular(medium),
        ));
  }
}
