// ignore_for_file: unused_local_variable

import 'dart:developer';
import 'dart:io';
import 'package:chimp_news/data/models/news_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

class AppDatabase {
  // final save = StreamController<BookmarkDatabase>();
  static AppDatabase appDatabase = AppDatabase._privateConstructor();
  AppDatabase._privateConstructor();

  Database? _database;
  static const String newsTable = 'News';

  static const String columnNewsId = 'id';
  static const String columnAuthor = 'author';
  static const String columnTitle = 'title';
  static const String columnDescription = 'description';
  static const String columnUrl = 'url';
  static const String columnUrlToImages = 'urlToImage';
  static const String columnPublishedAt = 'publishedAt';
  static const String columnContent = 'content';

  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    }
    _database = await initDB();
    return _database;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'reminder.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        log("============Creating News table=========");
        //'''inorder to use table name and column name variable
        await db.execute('''CREATE TABLE $newsTable(
          $columnNewsId INTEGER PRIMARY KEY ASC,
          $columnAuthor TEXT,
          $columnTitle TEXT,
          $columnDescription TEXT,
          $columnUrl TEXT,
          $columnUrlToImages TEXT,
          $columnPublishedAt TEXT,
          $columnContent TEXT
          )''');
      },
    );
  }

  List<Article?> allNews = [];

//:::::::::::::::::::::News Table ::::::::::::::::::::::::::::
  //insert news in the newsTable
  Future<int?> insertNews(Map<String, dynamic> news) async {
    final db = await database;
    log("inserting to news table ===== ${db.toString()}");
    return await db?.insert(
      newsTable,
      news,
    );
  }

  //get all news
  Future<List<Article?>> queryAllNews() async {
    final db = await database;
    var reminder = await db!.query(newsTable);
    allNews = reminder.isNotEmpty
        ? reminder.map((e) => Article?.fromJson(e)).toList()
        : [];
    log("queried all news");
    return [...allNews];
  }

  //check if news is saved
  Future<bool> checkSaveStatus({required String title}) async {
    bool savedStatus = false;
    final db = await database;
    var reminder = await db!
        .query(newsTable, where: '$columnTitle IN (?)', whereArgs: [title]);
    if (reminder.isNotEmpty) {
      savedStatus = true;
    } else {
      savedStatus = false;
    }
    return savedStatus;
  }

  //delete news based on title
  Future<int?> deleteNews({required String title}) async {
    final db = await database;
    log("deleted news successfully");
    return await db!
        .delete(newsTable, where: '$columnTitle IN (?)', whereArgs: [title]);
  }
}
