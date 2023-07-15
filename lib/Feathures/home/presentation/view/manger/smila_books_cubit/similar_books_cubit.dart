
import 'package:bloc/bloc.dart';
import 'package:bookly/Feathures/home/data/repos/home_repo.dart';
import 'package:bookly/Feathures/home/presentation/view/manger/smila_books_cubit/similar_books_state.dart';
class SimilarBookSCubit extends Cubit<SimilarBookState> {
  SimilarBookSCubit(this.homeRepo) : super(SimilarBookInitial());
  final HomeRepo homeRepo;
  Future<void>similarBookBooks({required String cat})async{
    emit(SimilarBookLoading());
    var result= await homeRepo.fetchSimilarBooks(cat: cat);
    result.fold((failure) {
      emit(SimilarBookFailure(failure.errMessage));
    }, (books) {
      emit(SimilarBookSuccess(books));
    });
  }
}
