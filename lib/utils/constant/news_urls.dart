class NewsUrls {
  static const String _apiKey = "430a0cfc3b2046909e689228839364ff";

  static String getLatestNews({required String query}) =>
      "https://newsapi.org/v2/everything?q=$query&from=2024-02-15&sortBy=publishedAt&pageSize=50&apiKey=$_apiKey";

  static String getPopularNews({required String query}) =>
      "https://newsapi.org/v2/everything?q=$query&from=2024-02-15&sortBy=popularity&pageSize=50&apiKey=$_apiKey";
}
