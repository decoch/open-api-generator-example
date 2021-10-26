import 'package:flutter_test/flutter_test.dart';
import 'package:todo_api/todo_api.dart';

void main() {
  test('Update todo', () {
    final todo = Todo(
      (b) => b
        ..id = 1
        ..name = 'name'
        ..status = TodoStatusEnum.doing,
    );
    expect(todo.id, 1);
    expect(todo.name, 'name');
    expect(todo.status, TodoStatusEnum.doing);

    final newTodo = todo.rebuild((b) => b..id = 2);
    expect(newTodo.id, 2);
    expect(newTodo.name, 'name');
    expect(newTodo.status, TodoStatusEnum.doing);

    expect(todo.id, 1);
  });

  test('Equal todo', () {
    final todo1 = Todo(
      (b) => b
        ..id = 1
        ..name = 'name'
        ..status = TodoStatusEnum.doing,
    );
    final todo2 = Todo(
      (b) => b
        ..id = 1
        ..name = 'name'
        ..status = TodoStatusEnum.doing,
    );
    expect(todo1, todo2);
  });
}
