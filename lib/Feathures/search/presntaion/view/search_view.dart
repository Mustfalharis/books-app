

import 'package:bookly/Feathures/search/presntaion/manger/featured_search_book_cubit/featured_search_books_cubit.dart';
import 'package:bookly/Feathures/search/presntaion/view/widght/search_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);
  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  void initState() {
    BlocProvider
        .of<FeaturedSearchBooksCubit>(context)
        .textEditingController=TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SearchViewBody(),
      ),
    );
  }
}


