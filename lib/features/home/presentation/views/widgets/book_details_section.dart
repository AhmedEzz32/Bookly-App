import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/style.dart';
import 'book_rating.dart';
import 'books_action.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key, required this.book}) : super(key: key);
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: AspectRatio(
            aspectRatio: 2.7 / 4,
            child: CustomBookImage(
              imageUrl: book.volumeInfo.imageLinks!.thumbnail,
            ),
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          book.volumeInfo.title!,
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          book.volumeInfo.authors![0],
          style: Styles.textStyle18.copyWith(
            fontFamily: 'Montserrat-Medium',
            color: const Color(0xff707070),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BookRating(
              rating: book.volumeInfo.averageRating ?? 0,
              count: book.volumeInfo.ratingsCount ?? 0,
            ),
          ],
        ),
        const SizedBox(
          height: 37,
        ),
        BookAction(
          bookModel: book,
        ),
      ],
    );
  }
}
