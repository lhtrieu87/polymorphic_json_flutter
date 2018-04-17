// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// Generator: BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<Student> _$studentSerializer = new _$StudentSerializer();
Serializer<FootballPlayer> _$footballPlayerSerializer =
    new _$FootballPlayerSerializer();

class _$StudentSerializer implements StructuredSerializer<Student> {
  @override
  final Iterable<Type> types = const [Student, _$Student];
  @override
  final String wireName = 'Student';

  @override
  Iterable serialize(Serializers serializers, Student object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'college',
      serializers.serialize(object.college,
          specifiedType: const FullType(String)),
      'age',
      serializers.serialize(object.age, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Student deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new StudentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'college':
          result.college = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$FootballPlayerSerializer
    implements StructuredSerializer<FootballPlayer> {
  @override
  final Iterable<Type> types = const [FootballPlayer, _$FootballPlayer];
  @override
  final String wireName = 'FootballPlayer';

  @override
  Iterable serialize(Serializers serializers, FootballPlayer object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'club',
      serializers.serialize(object.club, specifiedType: const FullType(String)),
      'age',
      serializers.serialize(object.age, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  FootballPlayer deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new FootballPlayerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'club':
          result.club = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

abstract class HumanBuilder {
  void replace(Human other);
  void update(void updates(HumanBuilder b));
  int get age;
  set age(int age);
}

class _$Student extends Student {
  @override
  final String college;
  @override
  final int age;

  factory _$Student([void updates(StudentBuilder b)]) =>
      (new StudentBuilder()..update(updates)).build();

  _$Student._({this.college, this.age}) : super._() {
    if (college == null)
      throw new BuiltValueNullFieldError('Student', 'college');
    if (age == null) throw new BuiltValueNullFieldError('Student', 'age');
  }

  @override
  Student rebuild(void updates(StudentBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  StudentBuilder toBuilder() => new StudentBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Student) return false;
    return college == other.college && age == other.age;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, college.hashCode), age.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Student')
          ..add('college', college)
          ..add('age', age))
        .toString();
  }
}

class StudentBuilder implements Builder<Student, StudentBuilder>, HumanBuilder {
  _$Student _$v;

  String _college;
  String get college => _$this._college;
  set college(String college) => _$this._college = college;

  int _age;
  int get age => _$this._age;
  set age(int age) => _$this._age = age;

  StudentBuilder();

  StudentBuilder get _$this {
    if (_$v != null) {
      _college = _$v.college;
      _age = _$v.age;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Student other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Student;
  }

  @override
  void update(void updates(StudentBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Student build() {
    final _$result = _$v ?? new _$Student._(college: college, age: age);
    replace(_$result);
    return _$result;
  }
}

class _$FootballPlayer extends FootballPlayer {
  @override
  final String club;
  @override
  final int age;

  factory _$FootballPlayer([void updates(FootballPlayerBuilder b)]) =>
      (new FootballPlayerBuilder()..update(updates)).build();

  _$FootballPlayer._({this.club, this.age}) : super._() {
    if (club == null)
      throw new BuiltValueNullFieldError('FootballPlayer', 'club');
    if (age == null)
      throw new BuiltValueNullFieldError('FootballPlayer', 'age');
  }

  @override
  FootballPlayer rebuild(void updates(FootballPlayerBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FootballPlayerBuilder toBuilder() =>
      new FootballPlayerBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FootballPlayer) return false;
    return club == other.club && age == other.age;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, club.hashCode), age.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FootballPlayer')
          ..add('club', club)
          ..add('age', age))
        .toString();
  }
}

class FootballPlayerBuilder
    implements Builder<FootballPlayer, FootballPlayerBuilder>, HumanBuilder {
  _$FootballPlayer _$v;

  String _club;
  String get club => _$this._club;
  set club(String club) => _$this._club = club;

  int _age;
  int get age => _$this._age;
  set age(int age) => _$this._age = age;

  FootballPlayerBuilder();

  FootballPlayerBuilder get _$this {
    if (_$v != null) {
      _club = _$v.club;
      _age = _$v.age;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant FootballPlayer other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FootballPlayer;
  }

  @override
  void update(void updates(FootballPlayerBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FootballPlayer build() {
    final _$result = _$v ?? new _$FootballPlayer._(club: club, age: age);
    replace(_$result);
    return _$result;
  }
}
