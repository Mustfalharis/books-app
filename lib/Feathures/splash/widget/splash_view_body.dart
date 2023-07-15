import 'package:bookly/Feathures/splash/widget/sliding_text.dart';
import 'package:flutter/cupertino.dart';
import '../../../core/utils/image_assets.dart';
import '../../home/presentation/view/home_view.dart';
import 'package:get/get.dart';
class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);
  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}
class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

@override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
         Image.asset(AppImageAssets.logo),
         const SizedBox(height: 3,),
         SlidingText(slidingAnimation: slidingAnimation),

      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation=Tween<Offset>(
      begin: const Offset(0,12) , end: Offset.zero,)
        .animate(animationController);
    animationController.forward();
  }
}
void navigateToHome() {
  Future.delayed(const Duration(seconds: 2),(){
    Get.to(()=> const HomeView(),
        transition: Transition.fade,
        duration: const Duration(milliseconds: 255));
  });
}




