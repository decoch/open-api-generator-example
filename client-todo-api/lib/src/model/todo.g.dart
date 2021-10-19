// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TodoStatusEnum _$todoStatusEnum_todo = const TodoStatusEnum._('todo');
const TodoStatusEnum _$todoStatusEnum_doing = const TodoStatusEnum._('doing');
const TodoStatusEnum _$todoStatusEnum_done = const TodoStatusEnum._('done');

TodoStatusEnum _$todoStatusEnumValueOf(String name) {
  switch (name) {
    case 'todo':
      return _$todoStatusEnum_todo;
    case 'doing':
      return _$todoStatusEnum_doing;
    case 'done':
      return _$todoStatusEnum_done;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TodoStatusEnum> _$todoStatusEnumValues =
    new BuiltSet<TodoStatusEnum>(const <TodoStatusEnum>[
  _$todoStatusEnum_todo,
  _$todoStatusEnum_doing,
  _$todoStatusEnum_done,
]);

Serializer<TodoStatusEnum> _$todoStatusEnumSerializer =
    new _$TodoStatusEnumSerializer();

class _$TodoStatusEnumSerializer
    implements PrimitiveSerializer<TodoStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'todo': 'todo',
    'doing': 'doing',
    'done': 'done',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'todo': 'todo',
    'doing': 'doing',
    'done': 'done',
  };

  @override
  final Iterable<Type> types = const <Type>[TodoStatusEnum];
  @override
  final String wireName = 'TodoStatusEnum';

  @override
  Object serialize(Serializers serializers, TodoStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TodoStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TodoStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Todo extends Todo {
  @override
  final int? id;
  @override
  final String name;
  @override
  final TodoStatusEnum? status;

  factory _$Todo([void Function(TodoBuilder)? updates]) =>
      (new TodoBuilder()..update(updates)).build();

  _$Todo._({this.id, required this.name, this.status}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'Todo', 'name');
  }

  @override
  Todo rebuild(void Function(TodoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoBuilder toBuilder() => new TodoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Todo &&
        id == other.id &&
        name == other.name &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Todo')
          ..add('id', id)
          ..add('name', name)
          ..add('status', status))
        .toString();
  }
}

class TodoBuilder implements Builder<Todo, TodoBuilder> {
  _$Todo? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  TodoStatusEnum? _status;
  TodoStatusEnum? get status => _$this._status;
  set status(TodoStatusEnum? status) => _$this._status = status;

  TodoBuilder() {
    Todo._defaults(this);
  }

  TodoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Todo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Todo;
  }

  @override
  void update(void Function(TodoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Todo build() {
    final _$result = _$v ??
        new _$Todo._(
            id: id,
            name: BuiltValueNullFieldError.checkNotNull(name, 'Todo', 'name'),
            status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
