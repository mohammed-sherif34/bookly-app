import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key, required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
            child: CustomTextButton(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
          backgroundColor: Colors.white,
          buttonTitle: 'free',
          textColor: Colors.black,
          url: book.volumeInfo!.previewLink??'',
        )),
        Expanded(
          child: CustomTextButton(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            backgroundColor: Color(0xffEF8262),
            buttonTitle: 'Free preview',
            textColor: Colors.white,
            url: book.volumeInfo!.previewLink??'',
          ),
        ),
      ],
    );
  }
}
