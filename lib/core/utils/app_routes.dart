import 'package:bookly_app/Features/Splash/presentation/views/splach_view.dart';
import 'package:bookly_app/Features/home/presentation/view/book_detailed_view.dart';
import 'package:bookly_app/Features/home/presentation/view/home_view.dart';
import 'package:bookly_app/Features/search/presentation/view/search_view.dart';
import 'package:flutter/material.dart';

abstract class AppRoutes {
  static final Map<String, Widget Function(BuildContext)> booklyRoutes = {
    HomeView.id: (context) => const HomeView(),
    SplachView.id: (context) => const SplachView(),
    BookDetailedView.id: (context) => const BookDetailedView(),
    SearchView.id: (context) => const SearchView()
  };
  static PageRouteBuilder<dynamic>? transitionCheked(RouteSettings settings) {
    if (settings.name == HomeView.id) {
      // Create a PageRouteBuilder
      return PageRouteBuilder(
        // Pass the settings to access the arguments
        settings: settings,
        // Define the page content
        pageBuilder: (context, animation, secondaryAnimation) =>
            const HomeView(),
        // Define the transition animation
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          // Use a FadeTransition widget
          return FadeTransition(
            // Use the animation as the opacity value
            opacity: animation,
            // Return the child widget
            child: child,
          );
        },
      );
    }
    // Return null if the route name is not matched
    return null;
  }
}
