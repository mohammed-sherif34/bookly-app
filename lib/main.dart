import 'package:bookly_app/Features/Splash/presentation/views/splach_view.dart';
import 'package:bookly_app/Features/home/data/entites/book_entity.dart';
import 'package:bookly_app/Features/home/data/models/repos/home_repo_imp.dart';
import 'package:bookly_app/Features/home/presentation/manager/also_like_cubit/also_like_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manager/featured_book_cubit/featured_book_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manager/newest_book_cubit/newest_book_cubit.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());

  var box = await Hive.openBox(kBookBox);

  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBookCubit(
            locator.get<HomeRepoImp>(),
          )..fetchFeaturedBook(),
        ),
        BlocProvider(
          create: (context) =>
              NewestBookCubit(locator.get<HomeRepoImp>())..fetchNewestBooks(),
        ),
        BlocProvider(
          create: (context) => AlsoLikeCubit(locator.get<HomeRepoImp>()),
        ),
      ],
      child: MaterialApp(
        routes: AppRoutes.booklyRoutes,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          scaffoldBackgroundColor: kPrimeColor,
        ),
        initialRoute: SplachView.id,
      ),
    );
  }
}
