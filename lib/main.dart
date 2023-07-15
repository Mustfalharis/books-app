import 'package:bookly/Feathures/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Feathures/splash/splash_view.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/serivce_locator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Feathures/home/presentation/view/manger/featured_books_cubit/featured_books_cubit.dart';
import 'Feathures/home/presentation/view/manger/newest_books_cubit/featured_books_cubit.dart';
import 'core/utils/color.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
void main() {
  setup();
  runApp(const BookApp());
}
class BookApp extends StatelessWidget {
  const BookApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) {
       return FeaturedBooksCubit(getIt.get<HomeRepoImpl>())..fetchFeaturedBooks();
    }),
        BlocProvider(create: (context) => NewsetBooksCubit(getIt.get<HomeRepoImpl>())..newsetBooks()),
      ],
      child: GetMaterialApp(
       debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor:  AppColor.kPrimaryColor,
          // textTheme: GoogleFonts.montserratTextTheme(),
        ),
        home: const SplashView(),
      ),
    );
  }
}
