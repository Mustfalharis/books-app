
import 'package:bookly/Feathures/splash/widget/splash_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
