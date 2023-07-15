
import '../../../../home/data/model/book_model.dart';
abstract class FeaturedSearchBooksState  {
  const FeaturedSearchBooksState();
  @override
  List<Object> get props => [];
}
class FeaturedSearchBooksInitial extends FeaturedSearchBooksState {}

class FeaturedSearchBooksLoading extends FeaturedSearchBooksState {}

class FeaturedSearchBooksFailure extends FeaturedSearchBooksState {
  final String errMessage;

  const FeaturedSearchBooksFailure(this.errMessage);
}

class FeaturedSearchBooksSuccess extends FeaturedSearchBooksState {
  final List<BookModel> books;

  const FeaturedSearchBooksSuccess(this.books);
}