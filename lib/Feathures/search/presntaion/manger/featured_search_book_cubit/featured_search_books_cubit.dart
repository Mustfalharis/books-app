
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import '../../../data/repos/search_repo.dart';
import 'fueatured_serach_books_state.dart';
class FeaturedSearchBooksCubit extends Cubit<FeaturedSearchBooksState> {
  FeaturedSearchBooksCubit(this.searchRepo) : super(FeaturedSearchBooksInitial());
  final SearchRepo searchRepo;
   late TextEditingController textEditingController;
  Future<void>fetchFeaturedSearchBooks()async{
    emit(FeaturedSearchBooksLoading());
    var result= await searchRepo.fetchSearchBooks(textEditingController.text);
    result.fold((failure) {
      emit(FeaturedSearchBooksFailure(failure.errMessage));
    }, (books) {
      emit(FeaturedSearchBooksSuccess(books));
    });
  }
}
