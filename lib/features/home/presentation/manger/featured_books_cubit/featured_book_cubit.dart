import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/repos/home_repo.dart';
import 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedInitialState());

  static FeaturedBooksCubit get(context) => BlocProvider.of(context);

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedLeadingState());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(FeaturedFailureState(failure.errorMsg));
      },
      (books) {
        emit(FeaturedSuccessState(books));
      },
    );
  }
}
