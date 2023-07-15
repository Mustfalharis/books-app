import 'package:bloc/bloc.dart';
import 'package:bookly/Feathures/home/data/repos/home_repo.dart';
import 'featured_books_state.dart';
class NewsetBooksCubit extends Cubit<NewSetBookState> {
  NewsetBooksCubit(this.homeRepo) : super(NewSetBooksInitial());
 final HomeRepo homeRepo;
 Future<void>newsetBooks()async{
   emit(NewSetBooksLoading());
   var result= await homeRepo.fetchNewSetBooks();
   result.fold((failure) {
     emit(NewSetBooksFailure(failure.errMessage));
   }, (books) {
     emit(NewSetBooksSuccess(books));
   });
}
}
