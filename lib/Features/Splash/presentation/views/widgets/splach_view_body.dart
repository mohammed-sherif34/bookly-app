import 'package:bookly_app/Features/Splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly_app/Features/home/presentation/view/home_view.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SpalchViewBody extends StatefulWidget {
  const SpalchViewBody({super.key});

  @override
  State<SpalchViewBody> createState() => _SpalchViewBodyState();
}

class _SpalchViewBodyState extends State<SpalchViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    initeSlidingAnimation();
    navigateToHome();

    super.initState();
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Image.asset(AssetData.logo),
        ),
        const SizedBox(
          height: 10,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void navigateToHome() {
    Future.delayed(const Duration(milliseconds: 1600), () {
      Navigator.pushNamed(context, HomeView.id);
     

      /*   Get.to(
        () => const HomeView(),
        transition: Transition.fadeIn,
        duration: kTransitionDuration,
      ); */
    });
  }

  void initeSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
}
