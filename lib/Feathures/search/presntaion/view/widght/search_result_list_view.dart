
import 'package:bookly/Feathures/search/presntaion/manger/featured_search_book_cubit/featured_search_books_cubit.dart';
import 'package:bookly/Feathures/search/presntaion/manger/featured_search_book_cubit/fueatured_serach_books_state.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../core/widgets/custom_loading_indictor.dart';
import '../../../../../core/widgets/custtom_error_widget.dart';
import '../../../../home/presentation/view/widget/home/best_seller_list_view_item.dart';import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedSearchBooksCubit,FeaturedSearchBooksState>(
        builder: (context, state) {
          if(state is FeaturedSearchBooksSuccess)
            {
              return ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return BestSellerListViewItem(
                    book: state.books[index],
                  );// return  BestSellerListViewItem();
                },
              );
            }
          else if (state is FeaturedSearchBooksFailure) {
            return CustomErrorWidget(errMessage: state.errMessage);
          }
          else {
            return const CustomLoadingIndicator();
          }
        },
    );
  }
}
