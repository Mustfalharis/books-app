

import 'package:bookly/Feathures/home/data/repos/home_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/link_api.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../model/book_model.dart';
class HomeRepoImpl implements HomeRepo{
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewSetBooks()async {
   try{
     var data = await apiService.get(url:AppLinkApi.getNewSetBook);
     List<BookModel> books=[];
     for(var item in data['items']){
        books.add(BookModel.fromJson(item));
       }
     return right(books);
   }on DioException catch (e) {
     if (e.response != null) {
       print(e.response);
       return left(ServerFailure(e.response.toString()));
     } else {
       return left(ServerFailure(e.message.toString()));
     }
   }
  }
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks()async {
    try{
      var data = await apiService.get(url: AppLinkApi.getBook);
      List<BookModel> books=[];
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }on DioException catch (e) {
      if (e.response != null) {
        return left(ServerFailure(e.response.toString()));
      } else {
        print(e.requestOptions);
        print(e.message);
        return left(ServerFailure(e.message.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String cat})async {

    try{

      var data = await apiService.get(url: AppLinkApi.similarBooks);
      List<BookModel> books=[];

      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }on DioException catch (e) {
      if (e.response != null) {
        return left(ServerFailure(e.response.toString()));
      } else {
        print(e.requestOptions);
        print(e.message);
        return left(ServerFailure(e.message.toString()));
      }
    }
  }

}