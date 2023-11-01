import 'package:bookly_app/Features/Splash/presentation/views/splach_view.dart';
import 'package:bookly_app/Features/home/presentation/view/home_view.dart';
import 'package:bookly_app/Features/search/presentation/view/search_view.dart';
import 'package:flutter/material.dart';

abstract class AppRoutes {
  static final Map<String, Widget Function(BuildContext)> booklyRoutes = {
    HomeView.id: (context) => const HomeView(),
    SplachView.id: (context) => const SplachView(),
    SearchView.id: (context) => const SearchView()
  };
}
