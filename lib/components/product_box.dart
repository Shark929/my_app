import 'package:flutter/material.dart';
import 'package:my_app/components/rating_box.dart';

class ProductBox extends StatelessWidget {
  final String name, description;
  final int price;
  final Color colors;
  const ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.colors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 150,
      child: Card(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 100,
            color: colors,
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(5),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(description),
                  Text("Price: $price"),
                  RatingBox(),
                ]),
          )),
        ],
      )),
    );
  }
}
