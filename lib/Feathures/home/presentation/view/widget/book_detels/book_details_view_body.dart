
import 'package:bookly/Feathures/home/presentation/view/widget/book_detels/similar_book_sectoin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../data/model/book_model.dart';
import 'book_details_section.dart';
class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key, required this.book}) : super(key: key);
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                 BookDetailsSection(
                   book: book,
                 ),
                 const Expanded(child: SizedBox(height: 50,)),
                 const SimilarBooksSection(),
                 const SizedBox(height: 20,),
              ],
            ),
          ) ,
        ),
      ],
    );
  }
}














