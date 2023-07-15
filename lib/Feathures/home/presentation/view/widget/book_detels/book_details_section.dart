


import 'package:bookly/Feathures/home/data/model/book_model.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../../core/styles/styles.dart';
import '../home/book_rating.dart';
import '../home/custom_list_view_item.dart';
import 'books_action.dart';
import 'custom_book_detail_app_bar.dart';
class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key, required this.book}) : super(key: key);
 final  BookModel book;
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail??'',
          ),
        ),
        const SizedBox(height: 33,),
        Text(
          book.volumeInfo.title!,
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 6,),
        Opacity(
          opacity: .7,
          child: Text(
            book.volumeInfo.authors![0],
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        const SizedBox(height: 18,),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          count: 10,
          rating: 10,
        ),
        const SizedBox(height: 37,),
         BooksAction(
          book: book,
        ),
      ],
    );
  }
}