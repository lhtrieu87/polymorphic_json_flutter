library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'models.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Human,
  Student,
  FootballPlayer,
])
final Serializers serializers = _$serializers;
final humanListType = const FullType(BuiltList, const [const FullType(Human)]);
final jsonSerializers = (serializers.toBuilder()
  ..addBuilderFactory(humanListType, () => new ListBuilder<Human>())
  ..addPlugin(new StandardJsonPlugin())).build();