import 'package:core/helper/data_mapper.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void buildCoreDI() {
  getIt.registerLazySingleton<DataMapper>(() => DataMapper());
}
