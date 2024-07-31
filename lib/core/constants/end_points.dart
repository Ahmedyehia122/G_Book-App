class EndPoints {
  static const String baseUrl = 'https://www.googleapis.com/books/v1';
  static const String fetchBooksEndPoint =
      '$baseUrl/volumes?Filtering=free-ebooks&Filtering=free-books%20&q=programing';
  static const String fetchNewsetBooks =
      '$baseUrl/volumes?Filtering=free-ebooks&=newest%20&q=programing';
}
