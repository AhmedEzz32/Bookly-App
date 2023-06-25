import 'package:equatable/equatable.dart';
import '../../../data/models/book_model/book_model.dart';

abstract class FeaturedBooksStates extends Equatable
{
  const FeaturedBooksStates();

  @override
  List<Object?> get props => [];
}

class FeaturedInitialState extends FeaturedBooksStates {}

class FeaturedLeadingState extends FeaturedBooksStates {}

class FeaturedFailureState extends FeaturedBooksStates
{
  final String errorMsg;
  const FeaturedFailureState(this.errorMsg);
}

class FeaturedSuccessState  extends FeaturedBooksStates
{
  final List<BookModel> books;
  const FeaturedSuccessState(this.books);
}
