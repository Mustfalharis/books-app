
import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import '../model/book_model.dart';
abstract class HomeRepo
{
   Future<Either<Failure,List<BookModel>>>fetchNewSetBooks();
   Future<Either<Failure,List<BookModel>>>fetchFeaturedBooks();
   Future<Either<Failure,List<BookModel>>>fetchSimilarBooks({required String cat});

}