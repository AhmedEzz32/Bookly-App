import 'package:dartz/dartz.dart';
import '../../../../../core/errors/failures.dart';
import '../book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();

  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category});
}

// 1)dy repoPattern dy o3bara 3n abstract class b7dd feh method aly ana 3awzha ttnfz myhmnesh ttnfz azay ana yhmny en hya ttnfz
// y3ny dy btkhleny a2ol feature dy ht3ml eh lkn msh ht3mlo azay
// 2) leeh 3mlt class asmo failure? 3shan a2dr a3ml mno types zy ma ana 3ayz
