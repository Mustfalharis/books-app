
import 'package:bookly/Feathures/home/presentation/view/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Feathures/home/presentation/view/manger/featured_books_cubit/featured_books_state.dart';
import 'package:bookly/core/widgets/custtom_error_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/utils/serivce_locator.dart';
import '../../../../../../core/widgets/custom_loading_indictor.dart';
import '../../../../data/repos/home_repo_impl.dart';
import '../../book_details_view.dart';
import '../../manger/smila_books_cubit/similar_books_cubit.dart';
import 'custom_list_view_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit,FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            height: MediaQuery
                .of(context)
                .size
                .height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return  GestureDetector(
                  onTap: (){
                    Get.to(()=>BlocProvider(
                      create: (context) => SimilarBookSCubit(getIt.get<HomeRepoImpl>()),
                      child: BookDetailsView(
                        book: state.books[index],
                      ),
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8,),
                    child: CustomBookImage(
                      imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail,
                    ),
                  ),
                );
              },
            ),
          );
        }
        else if (state is FeaturedBooksFailure)
          {
            return CustomErrorWidget(errMessage: state.errMessage);
          }
        else{
           return const CustomLoadingIndicator();
          }
      });
  }
}