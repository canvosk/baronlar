import 'package:get_storage/get_storage.dart';

class StorageHelper {
  final box = GetStorage();

  String getString({required String key}) {
    return box.read(key);
  }

  setString({required String key, required String value}) {
    box.write(key, value);
    return;
  }
}
