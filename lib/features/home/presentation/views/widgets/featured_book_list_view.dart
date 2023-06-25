import 'package:bookly_app/core/widget/custom_err.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_router.dart';
import '../../manger/featured_books_cubit/featured_book_cubit.dart';
import '../../manger/featured_books_cubit/featured_books_state.dart';
import 'custom_book_image.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, Object?>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, Object? state) {
        if (state is FeaturedSuccessState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              itemCount: state.books.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: GestureDetector(
                    onTap: (){
                      GoRouter.of(context).push(AppRouter.bookDetailsView , extra : state.books[index]);
                    },
                    child: CustomBookImage(
                        imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail
                      ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedFailureState) {
          return CustomErrorMsg(errMsg: state.errorMsg);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
