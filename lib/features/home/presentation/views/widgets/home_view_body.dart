import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list%20_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 30, left: 30, top: 24),
                  child: CustomAppBar(),
                ),
                SizedBox(height: 16),
                FeaturedBooksListView(),
                SizedBox(height: 32),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text('Best Seller', style: Styles.textStyle18),
                ),
                SizedBox(height: 8),
              ],
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: BestSellerListView(),
            ),
          )
        ],
      ),
    );
  }
}
