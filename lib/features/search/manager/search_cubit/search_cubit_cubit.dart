import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_cubit_state.dart';

class SearchCubitCubit extends Cubit<SearchCubitState> {
  SearchCubitCubit({required this.homeRepo})
      : super(SearchCubitInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSearchBooks({required String text}) async {
    emit(SearchCubitLoading());
    var result = await homeRepo.fetchSearchBooks(text: text);
    result.fold((failure) {
      emit(SearchCubitFailure(err: failure.toString()));
    }, (books) {
      emit(SearchCubitSuccess(books: books));
    });
  }
}
