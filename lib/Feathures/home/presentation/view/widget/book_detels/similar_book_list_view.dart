
import 'package:bookly/Feathures/home/presentation/view/manger/smila_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Feathures/home/presentation/view/manger/smila_books_cubit/similar_books_state.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../../core/utils/serivce_locator.dart';
import '../../../../../../core/widgets/custom_loading_indictor.dart';
import '../../../../../../core/widgets/custtom_error_widget.dart';
import '../../../../data/repos/home_repo_impl.dart';
import '../../book_details_view.dart';
import '../home/custom_list_view_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookSCubit,SimilarBookState>(
      builder: (context, state){
        if(state is SimilarBookSuccess) {
          return  Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            height: MediaQuery.of(context).size.height *.25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context,index){
                return GestureDetector(
                  onTap: (){
                    Get.to(()=> BookDetailsView(
                        book: state.books[index],
                      ),
                    );
                  },
                  child: Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 5,),
                  child:  CustomBookImage(
                      imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail?? '',
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBookFailure)
        {
          return CustomErrorWidget(errMessage: state.errMessage);
        }
        else{
          return const CustomLoadingIndicator();
        }
      },

    );
  }
}