
import 'package:bookly/Feathures/home/data/model/book_model.dart';
import 'package:bookly/Feathures/search/data/repos/search_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/utils/api_service.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/link_api.dart';
class SearchRepoImpl extends SearchRepo {
  final ApiService apiService;
  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>>fetchSearchBooks(
      String search) async {
    print(search);
    try {
      var data = await apiService.get(
          url: AppLinkApi.getBook);
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on DioException catch (e) {
      if (e.response != null) {
        print(e.response);
        return left(ServerFailure(e.response.toString()));
      } else {
        return left(ServerFailure(e.message.toString()));
      }
    }
  }
}
