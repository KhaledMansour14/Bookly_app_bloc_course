
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.width * 0.6,
          child: const CustomBookImage(),
        ),
        SizedBox(height: 43),
        Text('The Jungle Book', style: Styles.textStyle30),
        SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        SizedBox(height: 18),
        BookRating(mainAxisAlignment: MainAxisAlignment.center),
      ],
    );
  }
}