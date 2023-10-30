import 'package:bookly_app/Features/home/data/models/repos/home_repo_imp.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupServiceLocator() {
  locator.registerLazySingleton<Dio>(() => Dio());
  locator.registerLazySingleton<ApiService>(
    () => ApiService(dio: locator.get<Dio>()),
  );
  locator.registerLazySingleton<HomeRepoImp>(
    () => HomeRepoImp(
      locator.get<ApiService>(),
    ),
  );
}
