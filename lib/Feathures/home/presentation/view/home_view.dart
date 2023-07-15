
import 'package:bookly/Feathures/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Feathures/home/presentation/view/manger/smila_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Feathures/home/presentation/view/widget/home/home_view_body.dart';
import 'package:bookly/core/utils/serivce_locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  const  Scaffold(
      body: SafeArea(
        child: HomeViewBody(),
    ),
    );
  }
}
