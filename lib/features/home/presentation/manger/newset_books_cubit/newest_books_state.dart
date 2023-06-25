import 'package:equatable/equatable.dart';
import '../../../data/models/book_model/book_model.dart';

abstract class NewestStates extends Equatable
{
  const NewestStates();

  @override
  List<Object?> get props => [];
}

class NewestInitialState extends NewestStates {}

class NewestLeadingState extends NewestStates {}

class NewestFailureState extends NewestStates
{
  final String errorMsg;

  const NewestFailureState(this.errorMsg);
}

class NewestSuccessState  extends NewestStates
{
  final List<BookModel> books;

  const NewestSuccessState(this.books);
}
