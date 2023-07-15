
import 'package:bookly/Feathures/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Feathures/search/data/repos/search_repo_impl.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
final getIt=GetIt.instance;
void setup()
{
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiService>(),
    ));
  getIt.registerSingleton<SearchRepoImpl>(
      SearchRepoImpl(
        getIt.get<ApiService>(),
      ));
}