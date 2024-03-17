import 'dart:convert';
import 'dart:developer';

import 'package:chimp_news/utils/constant/news_urls.dart';
import 'package:http/http.dart' as http;

class NewsApiServices {
  Future<dynamic> getPopularNews() async {
    try {
      final response = await http.get(
        Uri.parse(NewsUrls.getPopularNews(query: "global")),
      );
      log("get popular news::::::::::::: ${response.statusCode} ${response.body}");
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return null;
      }
    } catch (e) {
      log("ERROR get popular news::::::::::::: $e");
      return false;
    }
  }

  Future<dynamic> getBreakingNews() async {
    try {
      final response = await http.get(
        Uri.parse(NewsUrls.getLatestNews(query: "breaking news")),
      );
      log("get breaking news::::::::::::: ${response.statusCode} ${response.body}");
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return null;
      }
    } catch (e) {
      log("ERROR get breaking news::::::::::::: $e");
      return false;
    }
  }

  Future<dynamic> searchPopularNews({required String query}) async {
    try {
      final response = await http.get(
        Uri.parse(NewsUrls.getPopularNews(query: query)),
      );
      log("search popular news::::::::::::: ${response.statusCode} ${response.body}");
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return null;
      }
    } catch (e) {
      log("ERROR search popular news::::::::::::: $e");
      return false;
    }
  }

  Future<dynamic> searchBreakingNews({required String query}) async {
    try {
      final response = await http.get(
        Uri.parse(NewsUrls.getLatestNews(query: query)),
      );
      log("search breaking news::::::::::::: ${response.statusCode} ${response.body}");
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return null;
      }
    } catch (e) {
      log("ERROR search breaking news::::::::::::: $e");
      return false;
    }
  }
}
