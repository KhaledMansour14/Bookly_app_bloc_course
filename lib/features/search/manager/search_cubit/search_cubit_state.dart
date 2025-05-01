part of 'search_cubit_cubit.dart';

abstract class SearchCubitState extends Equatable {
  const SearchCubitState();

  @override
  List<Object> get props => [];
}

final class SearchCubitInitial extends SearchCubitState {}

final class SearchCubitLoading extends SearchCubitState {}

final class SearchCubitFailure extends SearchCubitState {
  String err;
  SearchCubitFailure({required this.err});
}

final class SearchCubitSuccess extends SearchCubitState {
  List<BookModel> books;
  SearchCubitSuccess({required this.books});
}
