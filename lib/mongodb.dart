import 'dart:developer';

import 'package:getx/constant.dart';
import 'package:mongo_dart/mongo_dart.dart';

class Mongodatabase {
  static var db, userCollection;
  static connect() async {
    db = await Db.create(DATABASE_URL);
    await db.open();
    inspect(db);
    userCollection = db.collection(USER_COLLECTION);
  }
}
