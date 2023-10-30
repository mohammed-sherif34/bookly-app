part of 'also_like_cubit.dart';

sealed class AlsoLikeState extends Equatable {
  const AlsoLikeState();

  @override
  List<Object> get props => [];
}

final class AlsoLikeInitial extends AlsoLikeState {}

final class AlsoLikeSuccess extends AlsoLikeState {
  final List<BookModel> books;

  const AlsoLikeSuccess({required this.books});
}

final class AlsoLikeLoading extends AlsoLikeState {}

final class AlsoLikeFailure extends AlsoLikeState {
  final String errMessage;

  const AlsoLikeFailure({required this.errMessage});
}
