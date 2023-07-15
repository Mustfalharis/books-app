

import 'package:bookly/Feathures/home/presentation/view/widget/book_detels/similar_book_list_view.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../../core/styles/styles.dart';
class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You Can also Like ',
          textAlign:TextAlign.center ,
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16,),
        const SimilarBookListView(),
      ],
    );
  }
}
