import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 3),
          child: Icon(
            Icons.star_rate_rounded,
            color: Colors.amberAccent,
            size: 24,
          ),
        ),
        SizedBox(width: 2),
        Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        SizedBox(width: 5),
        Opacity(
          opacity: 0.7,
          child: Text(
            '(245)',
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}
