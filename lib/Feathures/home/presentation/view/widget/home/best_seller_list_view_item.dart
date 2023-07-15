
import 'dart:ui';
import 'package:bookly/Feathures/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Feathures/home/presentation/view/book_details_view.dart';
import 'package:bookly/Feathures/home/presentation/view/manger/smila_books_cubit/similar_books_cubit.dart';
import 'package:bookly/core/utils/serivce_locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/styles/styles.dart';
import '../../../../data/model/book_model.dart';
import 'book_rating.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key, required this.book}) : super(key: key);
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(()=>BlocProvider(
          create: (context) => SimilarBookSCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(
            book: book,
          ),
        ));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
        height: 130,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5/4,
              child: Container(
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image:NetworkImage(
                      book.volumeInfo.imageLinks?.thumbnail??"sdfaf",
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 30,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width *.5,
                    child: Text(
                      book.volumeInfo.title!,
                      style: Styles.textStyle20,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(height: 3,),
                   Text(
                    book.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(height: 3,),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                       BookRating(
                        rating: book.volumeInfo.averageRating??0,
                         count: book.volumeInfo.ratingsCount??0,
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


