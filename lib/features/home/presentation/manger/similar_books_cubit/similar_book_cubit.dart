import 'package:bookly_app/features/home/presentation/manger/similar_books_cubit/similar_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/repos/home_repo.dart';

class SimilarBooksCubit extends Cubit<SimilarStates> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarInitialState());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarLeadingState());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      emit(SimilarFailureState(failure.errorMsg));
    }, (books) {
      emit(SimilarSuccessState(books));
    });
  }
}
