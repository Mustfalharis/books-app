
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../home/data/model/book_model.dart';

 abstract class SearchRepo{
   Future<Either<Failure,List<BookModel>>>fetchSearchBooks(String search);
 }