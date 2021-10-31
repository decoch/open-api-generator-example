//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:todo_api/src/date_serializer.dart';
import 'package:todo_api/src/model/date.dart';

import 'package:todo_api/src/model/api_response.dart';
import 'package:todo_api/src/model/inline_response200.dart';
import 'package:todo_api/src/model/todo.dart';

part 'serializers.g.dart';

@SerializersFor([
  ApiResponse,
  InlineResponse200,
  Todo,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Todo)]),
        () => ListBuilder<Todo>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType(InlineResponse200)]),
        () => MapBuilder<String, InlineResponse200>(),
      )
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
