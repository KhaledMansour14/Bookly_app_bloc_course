import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/models/book_model/volume_info.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomButton(
            text: '19.99\$',
            textColor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            overlayColor: Color(0xffEF8262),
          ),
        ),
        Expanded(
          child: CustomButton(
            text: 'Free Preview',
            textColor: Colors.white,
            backgroundColor: Color(0xffEF8262),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            fontSize: 16,
            onPressed: () async{
              Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
                if (!await canLaunchUrl(uri)) {
                  throw Exception('Could not launch $uri');
                } else {
                  await launchUrl(uri);
                }
            },
          ),
        ),
      ],
    );
  }
}
