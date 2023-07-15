

import 'package:bookly/Feathures/search/presntaion/manger/featured_search_book_cubit/featured_search_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: BlocProvider.of<FeaturedSearchBooksCubit>(context).textEditingController,
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: 'search',
        suffixIcon: IconButton(
          onPressed: (){
            BlocProvider.of<FeaturedSearchBooksCubit>(context).fetchFeaturedSearchBooks();
          },
          icon: const Opacity(
              opacity: .8,
              child: Icon(Icons.search_rounded)
          ),
        ),
      ),
    );
  }
  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const  BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
