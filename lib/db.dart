import 'package:flutter_application_1/data.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:mongo_dart/mongo_dart.dart' hide State;
import 'data.dart';

var about;
main(List<String> arguments) async {
  Db db = await Db.create(
      'mongodb+srv://AGNI:<password>@cluster0.xrgkybp.mongodb.net/agrotech?retryWrites=true&w=majority');
  await db.open();
  print('Connected to database');
  DbCollection crops = db.collection('crops');
  about = await crops.find(where.limit(6)).toList();
  print(about);
  // print(crops);
}
