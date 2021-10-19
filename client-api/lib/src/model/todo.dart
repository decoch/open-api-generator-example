//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'todo.g.dart';

/// A todo
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [status] - todo status
abstract class Todo implements Built<Todo, TodoBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'name')
    String get name;

    /// todo status
    @BuiltValueField(wireName: r'status')
    TodoStatusEnum? get status;
    // enum statusEnum {  todo,  doing,  done,  };

    Todo._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(TodoBuilder b) => b;

    factory Todo([void updates(TodoBuilder b)]) = _$Todo;

    @BuiltValueSerializer(custom: true)
    static Serializer<Todo> get serializer => _$TodoSerializer();
}

class _$TodoSerializer implements StructuredSerializer<Todo> {
    @override
    final Iterable<Type> types = const [Todo, _$Todo];

    @override
    final String wireName = r'Todo';

    @override
    Iterable<Object?> serialize(Serializers serializers, Todo object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(TodoStatusEnum)));
        }
        return result;
    }

    @override
    Todo deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TodoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.id = valueDes;
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(TodoStatusEnum)) as TodoStatusEnum;
                    result.status = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

class TodoStatusEnum extends EnumClass {

  /// todo status
  @BuiltValueEnumConst(wireName: r'todo')
  static const TodoStatusEnum todo = _$todoStatusEnum_todo;
  /// todo status
  @BuiltValueEnumConst(wireName: r'doing')
  static const TodoStatusEnum doing = _$todoStatusEnum_doing;
  /// todo status
  @BuiltValueEnumConst(wireName: r'done')
  static const TodoStatusEnum done = _$todoStatusEnum_done;

  static Serializer<TodoStatusEnum> get serializer => _$todoStatusEnumSerializer;

  const TodoStatusEnum._(String name): super(name);

  static BuiltSet<TodoStatusEnum> get values => _$todoStatusEnumValues;
  static TodoStatusEnum valueOf(String name) => _$todoStatusEnumValueOf(name);
}

