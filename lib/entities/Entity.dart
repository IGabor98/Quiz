import 'package:uuid/uuid.dart';


abstract class Entity {
  String _id;

  String getID() {
    return _id;
  }

  Entity() {
   var uuid = Uuid();
   _id = uuid.v1();
  }
}
