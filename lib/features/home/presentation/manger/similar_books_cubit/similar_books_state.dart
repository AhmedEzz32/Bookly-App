import 'package:equatable/equatable.dart';
import '../../../data/models/book_model/book_model.dart';

abstract class SimilarStates extends Equatable
{
  const SimilarStates();

  @override
  List<Object?> get props => [];
}

class SimilarInitialState extends SimilarStates {}

class SimilarLeadingState extends SimilarStates {}

class SimilarFailureState extends SimilarStates
{
  final String errorMsg;

  const SimilarFailureState(this.errorMsg);
}

class SimilarSuccessState  extends SimilarStates
{
  final List<BookModel> books;

  const SimilarSuccessState(this.books);
}
