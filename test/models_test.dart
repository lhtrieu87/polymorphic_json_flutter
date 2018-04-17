import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:test/test.dart';

import '../lib/models.dart';
import '../lib/serializers.dart';

void main() {
  test('Polymorphism JSON serialization', () {
    Student s = new Student((s) =>
    s
      ..age = 17
      ..college = "NUS"
    );

    FootballPlayer cr = new FootballPlayer((f) =>
    f
      ..age = 33
      ..club = "Real Madrid"
    );


    expect(
        JSON.encode(
            jsonSerializers.serialize(
              new BuiltList<Human>([s, cr]), specifiedType: humanListType,)),
        '[{"\$":"Student","college":"NUS","age":17},{"\$":"FootballPlayer","club":"Real Madrid","age":33}]');
  });

  test('Polymorphism JSON deserialization', () {
    final json = '[{"\$":"Student","college":"NUS","age":17},{"\$":"FootballPlayer","club":"Real Madrid","age":33}]';
    final BuiltList<Human> parsed = jsonSerializers.deserialize(
        JSON.decode(json), specifiedType: humanListType);
    expect(2, parsed.length);

    expect(true, parsed.first is Student);
    Student s = parsed.first;
    expect(17, s.age);
    expect("NUS", s.college);

    expect(true, parsed[1] is FootballPlayer);
    FootballPlayer cr = parsed[1];
    expect(33, cr.age);
    expect("Real Madrid", cr.club);
  });
}