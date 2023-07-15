

import '../../../../data/model/book_model.dart';

abstract class SimilarBookState  {
  const SimilarBookState();
  @override
  List<Object> get props => [];
}
class SimilarBookInitial extends SimilarBookState {}

class SimilarBookLoading extends SimilarBookState {}

class SimilarBookFailure extends SimilarBookState {
  final String errMessage;

  const SimilarBookFailure(this.errMessage);
}

class SimilarBookSuccess extends SimilarBookState {
  final List<BookModel> books;
  SimilarBookSuccess(this.books);

}