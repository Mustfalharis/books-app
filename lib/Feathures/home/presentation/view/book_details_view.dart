
import 'package:bookly/Feathures/home/data/model/book_model.dart';
import 'package:bookly/Feathures/home/presentation/view/widget/book_detels/book_details_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'manger/smila_books_cubit/similar_books_cubit.dart';
class BookDetailsView  extends StatefulWidget {
  const BookDetailsView({Key? key, required this.book}) : super(key: key);
 final BookModel book;
  @override
  State<BookDetailsView> createState() {
     return _BookDetailsViewState();
  }
}
class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBookSCubit>(context).similarBookBooks(
        cat: widget.book.volumeInfo.categories![0],
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
         child:  BookDetailsViewBody(
           book: widget.book,
         ),
      ),
      );
  }
}
