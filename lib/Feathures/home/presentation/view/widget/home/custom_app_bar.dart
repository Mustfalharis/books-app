
import 'package:bookly/Feathures/search/data/repos/search_repo_impl.dart';
import 'package:bookly/Feathures/search/presntaion/manger/featured_search_book_cubit/featured_search_books_cubit.dart';
import 'package:bookly/Feathures/search/presntaion/view/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/utils/image_assets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/serivce_locator.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 33),
      child: Row(
        children: [
          Image.asset(
            AppImageAssets.logo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
            onPressed: (){
              Get.to(()=>BlocProvider(
                create: (context) => FeaturedSearchBooksCubit((getIt.get<SearchRepoImpl>())),
                child: const SearchView(),
              ),
              );},
            icon: const Icon(
              Icons.search,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}