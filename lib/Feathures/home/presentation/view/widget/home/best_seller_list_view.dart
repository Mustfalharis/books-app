

import 'package:bookly/Feathures/home/presentation/view/manger/newest_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Feathures/home/presentation/view/manger/newest_books_cubit/featured_books_state.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../../core/widgets/custom_loading_indictor.dart';
import '../../../../../../core/widgets/custtom_error_widget.dart';
import 'best_seller_list_view_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class BookListView extends StatelessWidget {
  const BookListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit,NewSetBookState>(
      builder: (context, state) {
        if (state is NewSetBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return BestSellerListViewItem(
                book: state.books[index],
              );
            },
          );
        }
        else if (state is NewSetBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        }
        else {
          return const CustomLoadingIndicator();
        }
      });
      }
  }

