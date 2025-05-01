import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/search/manager/search_cubit/search_cubit_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_filed.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchTextField(),
          const SizedBox(height: 16),
          Text(
            'Search Result',
            style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: BlocBuilder<SearchCubitCubit, SearchCubitState>(
              builder: (context, state) {
                if (state is SearchCubitLoading) {
                  return const Center(
                    child: CustomLoadingIndicator(),
                  );
                } else if (state is SearchCubitSuccess) {
                  return SearchResultListView(books: state.books,);
                } else if (state is SearchCubitFailure) {
                  return Center(child: const Text('No books have this name'));
                } else {
                  return const Center(child: Text('Start typing to search'),);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
