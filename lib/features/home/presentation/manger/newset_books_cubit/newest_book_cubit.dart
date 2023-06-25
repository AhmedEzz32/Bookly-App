import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/repos/home_repo.dart';
import 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestStates> {
  NewestBooksCubit(this.homeRepo) : super(NewestInitialState());

  static NewestBooksCubit get(context) => BlocProvider.of(context);

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestLeadingState());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold(
      (failure) {
        emit(NewestFailureState(failure.errorMsg));
      },
      (books) {
        emit(NewestSuccessState(books));
      },
    );
  }
}
