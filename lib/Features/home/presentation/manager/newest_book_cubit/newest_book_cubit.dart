import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/models/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());
  HomeRepo homeRepo;
    BookModel book=const BookModel();
  Future<void> fetchNewestBooks() async {
    emit(NewestBookLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) => NewestBookFailure(errMessage: failure.errMessage),
        (books) => emit(NewestBookSuccess(books: books)));
  }
}
