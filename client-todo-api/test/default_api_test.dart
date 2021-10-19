import 'package:test/test.dart';
import 'package:todo_api/todo_api.dart';


/// tests for DefaultApi
void main() {
  final instance = TodoApi().getDefaultApi();

  group(DefaultApi, () {
    // Add a new todo
    //
    //Future<Todo> addTodo(Todo todo) async
    test('test addTodo', () async {
      // TODO
    });

    // Finds todos
    //
    //Future<BuiltList<Todo>> findTodos() async
    test('test findTodos', () async {
      // TODO
    });

    // Update an existing todo
    //
    //Future<Todo> updateTodo(Todo todo) async
    test('test updateTodo', () async {
      // TODO
    });

  });
}
