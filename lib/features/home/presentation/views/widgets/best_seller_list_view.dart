
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Text(
            'Harry Potter and the Goblet of Fire',
            style:
                Styles.textStyle20.copyWith(fontFamily: kCormorantGaramond),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          'J.K. Rowling',
          style: Styles.textStyle14
              .copyWith(color: const Color.fromARGB(255, 189, 189, 189)),
        ),
        const SizedBox(height: 3),
        Row(
          children: [
            Text(
              '19.99 \$',
              style: Styles.textStyle20,
            ),
          ],
        )
      ],
    );
  }
}
