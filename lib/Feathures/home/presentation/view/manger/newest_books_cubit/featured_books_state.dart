
import '../../../../data/model/book_model.dart';
abstract class NewSetBookState  {
  const NewSetBookState();
  @override
  List<Object> get props => [];
}
class NewSetBooksInitial extends NewSetBookState {}

class NewSetBooksLoading extends NewSetBookState {}

class NewSetBooksFailure extends NewSetBookState {
  final String errMessage;

  const NewSetBooksFailure(this.errMessage);
}

class NewSetBooksSuccess extends NewSetBookState {
  final List<BookModel> books;

  const NewSetBooksSuccess(this.books);
}