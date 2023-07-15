

import 'package:bookly/Feathures/home/data/model/book_model.dart';
import 'package:bookly/core/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/function/launch_url.dart';
import '../../../../../../core/widgets/cusotm_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key, required this.book}) : super(key: key);
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children:[
          Expanded(
               child: CustomButton(
                 onPressed: (){},
                 backgroundColor: Colors.white,
                 textColor: Colors.black,
                 borderRadius: const BorderRadius.only(
                     topLeft: Radius.circular(12),
                     bottomLeft:Radius.circular(12),
                 ),
                 text: 'Free',
               ),
           ),
          Expanded(
            child: CustomButton(
              onPressed: (){
                launchCustomUr(context,book.volumeInfo.previewLink!);
              },
              backgroundColor: AppColor.orange,
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              fontSize: 16,
              text: getText(book),
            ),
          ),
        ],
      ),
    );
  }
}
String getText(BookModel bookModel) {
  if (bookModel.volumeInfo.previewLink == null) {
    return 'Not Avaliable';
  } else {
    return 'Preview';
  }
}

