library models;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'models.g.dart';

@BuiltValue(instantiable: false)
abstract class Human extends Object {
  @override
  int get age;

  Human rebuild(void updates(HumanBuilder b));

  HumanBuilder toBuilder();
}

abstract class Student extends Object
    implements Human, Built<Student, StudentBuilder> {
  String get college;

  factory Student([updates(StudentBuilder b)]) = _$Student;

  static Serializer<Student> get serializer => _$studentSerializer;

  Student._();
}

abstract class FootballPlayer extends Object
    implements Human, Built<FootballPlayer, FootballPlayerBuilder> {
  String get club;

  factory FootballPlayer([updates(FootballPlayerBuilder b)]) = _$FootballPlayer;

  static Serializer<FootballPlayer> get serializer =>
      _$footballPlayerSerializer;

  FootballPlayer._();
}
