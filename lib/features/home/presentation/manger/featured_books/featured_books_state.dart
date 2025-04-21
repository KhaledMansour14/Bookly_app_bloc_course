part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessage;

  const FeaturedBooksFailure(this.errMessage);
}

final class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

  const FeaturedBooksSuccess(this.books);
}



// sudo ip addr flush dev eno1
// sudo ip addr add 192.168.1.150/24 dev eno1
// sudo ip route add default via 192.168.1.1
// echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf

// sudo ip addr flush dev eno1
// sudo ip addr add 192.168.2.12/24 dev eno1
// sudo ip route add default via 192.168.2.1
// echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf