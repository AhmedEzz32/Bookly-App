import 'package:bookly_app/core/widget/custom_err.dart';
import 'package:bookly_app/features/home/presentation/manger/newset_books_cubit/newest_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/manger/newset_books_cubit/newest_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestStates>(
      builder: (BuildContext context, state) {
        if (state is NewestSuccessState) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewestFailureState) {
          return CustomErrorMsg(errMsg: state.errorMsg);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
