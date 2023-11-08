import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/models/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'also_like_state.dart';

class AlsoLikeCubit extends Cubit<AlsoLikeState> {
  AlsoLikeCubit(this.homeRepo) : super(AlsoLikeInitial());
  HomeRepo homeRepo;

  Future<void> fetchAlsoLikeBook({required category}) async {
    emit(AlsoLikeLoading());
    var result = await homeRepo.fetchAlsoLikeBooks(category: category);
    result.fold(
        (failure) => emit(AlsoLikeFailure(errMessage: failure.errMessage)),
        (books) => emit(AlsoLikeSuccess(books: books)));
  }
}
