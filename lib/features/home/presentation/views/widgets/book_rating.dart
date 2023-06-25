import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key, required this.rating, required this.count})
      : super(key: key);
  final num rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          rating.toString(),
          style: Styles.textStyle16.copyWith(
            fontFamily: 'Montserrat-Regular',
          ),
        ),
        const SizedBox(
          width: 9,
        ),
        Text(
            '($count)',
            style: Styles.textStyle14.copyWith(
              color: const Color(0xff707070),
              fontFamily: 'Montserrat-Regular',
            )),
      ],
    );
  }
}
