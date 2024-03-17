import 'package:chimp_news/utils/database/app_database.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void initLocator() {
  locator.registerLazySingleton<AppDatabase>(() => AppDatabase.appDatabase);
}
