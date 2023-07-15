
import 'package:bookly/Feathures/search/presntaion/view/widght/search_result_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/styles/styles.dart';
import 'custom_search_text_fild.dart';
class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const  [
          CustomSearchTextField(),
          SizedBox(height:30 ,),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(height:16 ,),
          Expanded(
              child: SearchResultListView()
          ),
        ],
      ),
    );
  }
}



