import 'package:flutter/material.dart';

class RatingBox extends StatefulWidget {
  @override
  State<RatingBox> createState() => _RatingBoxState();
}

class _RatingBoxState extends State<RatingBox> {
  int rating = 0;

  setRatingOne() {
    setState(() {
      rating = 1;
    });
  }

  setRatingTwo() {
    setState(() {
      rating = 2;
    });
  }

  setRatingThree() {
    setState(() {
      rating = 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    double size = 20;

    return Row(
      children: [
        IconButton(
          icon: rating >= 1
              ? Icon(
                  Icons.star,
                  size: size,
                )
              : Icon(
                  Icons.star_border,
                  size: size,
                ),
          color: Colors.red,
          onPressed: setRatingOne,
          iconSize: size,
        ),
        IconButton(
          icon: rating >= 2
              ? Icon(
                  Icons.star,
                  size: size,
                )
              : Icon(
                  Icons.star_border,
                  size: size,
                ),
          color: Colors.red,
          onPressed: setRatingTwo,
          iconSize: size,
        ),
        IconButton(
          icon: rating >= 3
              ? Icon(
                  Icons.star,
                  size: size,
                )
              : Icon(
                  Icons.star_border,
                  size: size,
                ),
          color: Colors.red,
          onPressed: setRatingThree,
          iconSize: size,
        ),
      ],
    );
  }
}
