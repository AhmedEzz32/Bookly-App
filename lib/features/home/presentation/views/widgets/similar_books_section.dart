import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget
{
  const SimilarBooksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: SizedBox(
              height: 49,
            ),
          ),
          Text(
            'You can also like',
            style:
            Styles.textStyle16.copyWith(
                fontFamily: 'Montserrat-SemiBold',
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const SimilarBookListView(),
        ],
      ),
    );
  }
}
